extends RigidBody3D

@onready var mesh_instance_3d: MeshInstance3D = $MeshInstance3D

var ogPosition

@export var color : Color
@export var initialSpawn : Vector3


func _ready() -> void:
	initialSpawn = position


func resetPosition(_body):
	position = initialSpawn
