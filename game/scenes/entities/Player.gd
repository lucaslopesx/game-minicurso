extends KinematicBody2D

var gravity = 10
var velocity = Vector2.ZERO


func _physics_process(delta):
	velocity.y += gravity
	move_and_collide(velocity*delta)
