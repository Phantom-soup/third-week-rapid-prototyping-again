extends CollisionObject3D
class_name Interactable

@export var prompt_message = " "
@export var prompt_input = " "

signal touched(body)

func interact(body):
	touched.emit(body)
