extends Area2D


var score
signal score(score)
func _ready():
	score = 0
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Entonnoir_body_entered(body):
	if body.is_in_group("bille"):
		print ("On marque un point")
		score += 1
		emit_signal("score", score)
		body.queue_free()
		
	 # Replace with function body.


func _on_Entonnoir_body_exited(body):
#	if body.is_in_group("bille"):
###		print ("On marque un point")
#		body.queue_free()

	pass # Replace with function body.
