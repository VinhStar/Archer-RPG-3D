using System.Collections;
using MyEditor;
using UnityEngine;

namespace Entity.Enemy
{
    public class EnemyController : CharacterBase
    {
        [HideInInspector] public Transform player;                                // Reference to the player
        
        [InspectorGroup("Character Movement")]
        [Range(0, 5)] public float moveDuration = 1.5f;         // Duration for moving forward before re-evaluating
        [Range(0, 5)] public float rotateDuration = 1f;         // Duration for rotating towards the player
        [Range(0, 100)] public float keepMovingDistance = 10f;  // Distance to keep moving towards the player
        
        [InspectorGroup("Attack Settings")]
        public string attackAnimation;                          // Name of the attack animation
        [Range(0, 100)] public float rangeForAttack = 2f;       // Range at which the enemy starts attacking
        public float attackCooldown = 1f;                       // Cooldown time between attacks

        protected bool isMovingForward;           // Flag to check if enemy is moving forward
        protected bool isRotating;                // Flag to check if enemy is rotating
        protected bool isAttacking;               // Flag to check if the enemy is attacking

        private float moveTimer;                  // Timer to track movement duration
        private float rotateTimer;                // Timer to track rotation duration
        private float attackTimer;                // Timer for attack cooldown
        private readonly string speedParameter = "Speed";
        private readonly string attackSpeedParameter = "AttackSpeed";
        
        
        protected override void Start()
        {
            base.Start();
            moveTimer = moveDuration;
            isMovingForward = true;
            attackTimer = attackCooldown;
        }

        protected virtual void FixedUpdate()
        {
            if (player)
            {
                float distanceToPlayer = Vector3.Distance(transform.position, player.position);

                if (distanceToPlayer <= rangeForAttack)
                {
                    // Within attack range, stop moving and attack
                    StopMove();
                    LockOnPlayer();
                    if (!isAttacking && attackTimer >= attackCooldown)
                    {
                        StartCoroutine(PerformAttack());
                    }
                }
                else if (distanceToPlayer >= keepMovingDistance) // Keep moving towards the player
                {
                    isMovingForward = true;
                    isRotating = true;
                            
                    Vector3 directionToPlayer = player.position - transform.position;
                    Move(directionToPlayer);
                    Rotate(directionToPlayer);
                }
                else
                {
                    // Handle movement and rotation
                    if (isMovingForward)
                    {
                        // Move forward towards the player
                        Move(transform.forward);
                        moveTimer -= Time.fixedDeltaTime;

                        if (moveTimer <= 0f)
                        {
                            // Stop moving forward and check player position
                            isMovingForward = false;
                            moveTimer = moveDuration; // Reset timer
                            isRotating = true; // Start rotating towards player
                        }
                    }
                    else if (isRotating)
                    {
                        StopMove();
                        
                        rotateTimer += Time.fixedDeltaTime;
                        Vector3 directionToPlayer = player.position - transform.position;
                        Rotate(directionToPlayer);
                        
                        if (rotateTimer >= rotateDuration)
                        {
                            // Stop rotating and start moving forward
                            isRotating = false;
                            isMovingForward = true;
                            rotateTimer = 0f; // Reset timer
                        }
                    }
                }

                // Update attack timer
                if (attackTimer < attackCooldown)
                {
                    attackTimer += Time.fixedDeltaTime;
                }
            }
            else
            {
                player = GameObject.FindGameObjectWithTag("Player").transform;
            }
        }

        public override void Move(Vector3 direction) // Move forward towards the player
        {
            if (animator.GetCurrentAnimatorStateInfo(0).IsName(attackAnimation)) return;
            rb.position += moveSpeed * Time.fixedDeltaTime * direction;
            animator.SetFloat(speedParameter, moveSpeed);
        }

        public override void Rotate(Vector3 direction) // Rotate towards the player based on the duration
        {
            direction.y = 0; // Ignore y-axis
            direction = direction.normalized;
            Quaternion targetRotation = Quaternion.LookRotation(direction);
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, rotateTimer / rotateDuration);
        }
        
        void LockOnPlayer()
        {
            Vector3 directionToPlayer = player.position - transform.position;
            directionToPlayer.y = 0; // Ignore y-axis
            directionToPlayer.Normalize();
            Quaternion targetRotation = Quaternion.LookRotation(directionToPlayer);
            transform.rotation = targetRotation;
        }

        public override void StopMove()
        {
            base.StopMove();
            animator.SetFloat(speedParameter, 0f);
        }

        public override void Attack()
        {
            isAttacking = true;
            animator.SetBool(attackAnimation, true);
        }
        
        public override void StopAttack()
        {
            isAttacking = false;
            animator.SetBool(attackAnimation, false);
        }

        void SetAnimationAttackSpeed()
        {
            float animationLength = animator.GetCurrentAnimatorClipInfo(0)[0].clip.length;
            float animationMultiplier = attackSpeed * animationLength;
            animator.SetFloat(attackSpeedParameter, animationMultiplier);
        }

        private IEnumerator PerformAttack()
        {
            Attack();
            attackTimer = -1 / attackSpeed; // Reset attack timer

            yield return new WaitUntil(() => animator.GetCurrentAnimatorStateInfo(0).IsName(attackAnimation));
            SetAnimationAttackSpeed();
        }
    }
}
