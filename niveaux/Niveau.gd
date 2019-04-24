extends Node2D

export (PackedScene) var sac_de_bille #Scene qui sera ajoutée à la fin du timer
#var position_initiale #Position des autres billes

func _ready():
	# La position initiale est égale à la 
	# position de la première bille
#	position_initiale = $Position2D.position
	pass

func _process(delta):
	$CanvasLayer/ColorRect/MarginContainer/HBoxContainer/LabelTimer.text = str(int($TimerNiveau.time_left))

# Timer pour faire apparaitre les billes
# Message envoyé à la fin du timer
func _on_Timer_timeout():
	# On crée une bille
	var bille = sac_de_bille.instance()
	# On la place sur la position_initiale
	bille.position = $Position2D.position
	#bille.linear_velocity = Vector2( cos($Position2D.rotation), sin($Position2D.rotation)) * 10
	# La bille créee est ajoutée sous le noeud niveau
	add_child(bille)
	# On redemarre pour le timer
	$Timer.start()



func _on_Entonnoir_score(score):
	$CanvasLayer/ColorRect/MarginContainer/HBoxContainer/LabelScore.text = str(score)
	pass # Replace with function body.
