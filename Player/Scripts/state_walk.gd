class_name State_Walk extends State

@export var move_speed : float = 100.0

@onready var idle: State_Idle = $"../Idle"
@onready var attack: State_Attack = $"../Attack"




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


## What happens when the player enters this state
func Enter() -> void:
	player.UpdateAnimation("walk")
	pass


## What happens when the player exits this state
func Exit() -> void:
	pass

## What happens during the _process update in this state
func Process(_delta: float ) -> State:
	if player.direction == Vector2.ZERO:
		return idle
	
	player.velocity = player.direction * move_speed
	
	if player.SetDirection():
		Enter()
	
	
	return null

## What happens during the _physics process update in this State
func Physics(_delta : float) -> State:
	return null

## What happens with input events in this State
func HandleInput( _event : InputEvent) -> State:
	if _event.is_action_pressed("attack"):
		return attack
	return null
