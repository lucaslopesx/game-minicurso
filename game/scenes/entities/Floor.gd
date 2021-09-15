extends Node2D

onready var sprite = $Sprite
onready var sprite2 = $Sprite2
var scroll_speed = 2

func _physics_process(delta):
	move()

func move():
	sprite.position.x -= scroll_speed
	sprite2.position.x -= scroll_speed
	if(sprite.position.x <= -get_viewport().size.x):
		sprite.position.x -= -get_viewport().size.x
	if(sprite2.position.x <= -get_viewport().size.x):
		sprite2.position.x -= -get_viewport().size.x	
