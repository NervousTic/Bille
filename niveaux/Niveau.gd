extends Node2D

export (PackedScene) var sac_de_bille
var position_initiale

func _ready():
	position_initiale = $Bille.position
	pass # Replace with function body.



func _on_Bille_body_entered(body):
	if body.is_in_group("rebond"):
#		print ("position de la bille " + str($Bille.position))
#		$Bille.apply_impulse(Vector2(0, 0), $Bille.linear_velocity * 20)
		$Bille.linear_velocity *= 5


func _on_Timer_timeout():
	var bille = sac_de_bille.instance()
	bille.position = position_initiale
	add_child(bille)
	$Timer.start()
	pass # Replace with function body.
