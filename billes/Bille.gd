extends RigidBody2D

var centre = Vector2(0,0)
#var centre = position
export var  direction = Vector2(0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	apply_impulse(centre, direction)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#
#func _on_Bille_body_entered(body):
#	if body.is_in_group("rebond"):
#		linear_velocity *= 5
#	pass # Replace with function body.
