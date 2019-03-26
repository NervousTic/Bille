extends KinematicBody2D

var selectionne = false

func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	if Input.is_mouse_button_pressed(BUTTON_LEFT) and selectionne == false:
		var mouse_pos = get_global_mouse_position()
		print (mouse_pos)
		position = mouse_pos
		selectionne = true
	
	if Input.is_mouse_button_pressed(BUTTON_LEFT) and selectionne == true:
		var mouse_pos = get_global_mouse_position()
		print (mouse_pos)
		position = mouse_pos
		selectionne = false
		
	if Input.is_mouse_button_pressed(BUTTON_RIGHT):
		var diff_pos = get_global_mouse_position() - position
		print ("diff_pos = " + str(diff_pos))
		rotation = position.angle_to(diff_pos)
	
	
	