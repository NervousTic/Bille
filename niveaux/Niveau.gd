extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Bille_body_entered(body):
	if body.is_in_group("rebond"):
#		print ("Position de la bille : " + str($Bille.position))
		
#		$Bille.apply_impulse(Vector2(0,0), Vector2(0,-100000))
		$Bille.linear_velocity *= 5
		

func _on_Zone_body_entered(body):
	$Bille.physics_material_override.absorbent = true
	print ($Bille.physics_material_override.absorbent)
	pass # Replace with function body.


func _on_Zone_body_exited(body):
	$Bille.physics_material_override.absorbent = false
	print ($Bille.physics_material_override.absorbent)
	pass # Replace with function body.
