extends StaticBody3D


@onready var anim = $AnimationPlayer
var pressing = 0
var hasTriggered : bool

signal press(body)
signal release(body)


func _on_area_3d_body_entered(body: Node3D) -> void:
	pressing = pressing + 1
	
	if pressing > 0 and not hasTriggered:
		anim.play("pressdown")
		hasTriggered = true
		press.emit(body)


func _on_area_3d_body_exited(body: Node3D) -> void:
	pressing = pressing - 1
	
	if pressing < -1:
		pressing = 0
	
	if pressing == 0: 
		anim.play("pressup")
		hasTriggered = false
		release.emit(body)
