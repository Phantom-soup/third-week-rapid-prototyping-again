extends RigidBody3D

@onready var mesh_instance_3d: MeshInstance3D = $MeshInstance3D

var ogPosition

@export var color : Color
@export var initialSpawn : Vector3


func _ready() -> void:
	mesh_instance_3d.mesh
	initialSpawn = position


func resetPosition(body):
	position = initialSpawn
