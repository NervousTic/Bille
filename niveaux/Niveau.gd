extends Node2D

export (PackedScene) var sac_de_bille
var position_initiale

func _ready():
	position_initiale = $Bille.position
	pass # Replace with function body.


func _on_Timer_timeout():
	var bille = sac_de_bille.instance()
	bille.position = position_initiale
	add_child(bille)
	$Timer.start()
	pass # Replace with function body.
