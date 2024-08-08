extends CharacterBody2D

enum COW_STATE { IDLE, WALK }

@onready var sprite= $AnimatedSprite2D

var move_direction : Vector2 = Vector2.ZERO
var current_state : COW_STATE = COW_STATE.IDLE

func _ready():
	# Generate a random direction vector
	flip_direction()
	print(randi_range(-1,1))

func _process(delta):
	# Move the node in the chosen direction
	position += move_direction * 10 * delta

func flip_direction():
	move_direction = Vector2(
		randi_range(-1,1),
		randi_range(-1,1)
	).normalized()
	
	if (move_direction.x < 0):
		sprite.flip_h = true
	elif (move_direction.x > 0):
		sprite.flip_h = false
	pass
	

