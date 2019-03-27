extends "res://plateaux/Plateau.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_Zone_body_entered(body):
	if body.is_in_group("bille"):
		body.physics_material_override.absorbent = true
#		body.physics_material_override.bounce = 10000000
		print (body.physics_material_override.absorbent)
	pass # Replace with function body.




func _on_Zone_body_exited(body):
	if body.is_in_group("bille"):
		body.physics_material_override.absorbent = false
		print (body.physics_material_override.absorbent)
	pass # Replace with function body.
