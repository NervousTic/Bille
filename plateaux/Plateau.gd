extends KinematicBody2D

#var selectionne = false
export var acceleration = 2
export var rebond = 0

func _ready():
	set_physics_process(false)
	pass # Replace with function body.


func _physics_process(delta):
	if Input.is_mouse_button_pressed(BUTTON_LEFT):# and selectionne == false:
		var mouse_pos = get_global_mouse_position()
#		print (mouse_pos)
		position = mouse_pos
#		selectionne = true
	
	if Input.is_mouse_button_pressed(BUTTON_LEFT): # and selectionne == true:
		var mouse_pos = get_global_mouse_position()
#		print (mouse_pos)
		position = mouse_pos
#		selectionne = false
		
	if Input.is_mouse_button_pressed(BUTTON_RIGHT):
		var diff_pos = get_global_mouse_position() - position
#		print ("diff_pos = " + str(diff_pos))
		rotation = position.angle_to(diff_pos)
		

	
	
	

func _on_Plateau_mouse_entered():
	set_physics_process(true)
	pass # Replace with function body.


func _on_Plateau_mouse_exited():
	set_physics_process(false)
	pass # Replace with function body.


func _on_Zone_body_entered(body):
	if body.is_in_group("bille"):
		body.linear_velocity *= acceleration
		body.physics_material_override.bounce = rebond
	pass # Replace with function body.
