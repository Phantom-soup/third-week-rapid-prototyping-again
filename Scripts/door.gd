extends Node3D

@onready var anim: AnimationNodeStateMachinePlayback

var is_open := false
var openerValue = 0
var closeKey

@export var openingKey : int


func _ready() -> void:
	anim = $AnimationTree.get("parameters/playback")
	closeKey = openingKey - openingKey


func toggle(_body):
	if is_open == true:
		is_open = false
	else:
		is_open = true
	
	if is_open == true:
		anim.travel("Door_Open")
	if is_open == false:
		anim.travel("Door_Close")


func turnon(_body):
	is_open = true
	
	if is_open == true:
		anim.travel("Door_Open")
	if is_open == false:
		anim.travel("Door_Close")


func turnoff(_body):
	is_open = false
	
	if is_open == true:
		anim.travel("Door_Open")
	if is_open == false:
		anim.travel("Door_Close")
		

func increment(_body):
	openerValue = openerValue + 1
	
	if openerValue > openingKey:
		openerValue = openingKey
	
	if openerValue == openingKey:
		anim.travel("Door_Open")


func deincrement(_body):
	openerValue = openerValue - 1
	
	if openerValue < 0:
		openerValue = 0
	
	if openerValue != openingKey: 
		anim.travel("Door_Close")
