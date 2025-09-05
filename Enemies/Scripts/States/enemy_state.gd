class_name EnemyState extends Node


## Store a reference to the enemy it belongs to
var enemy : Enemy
var state_machine : EnemyStateMachine


## What happens when the enemy initializes
func init() -> void:
	pass

## What happens when the enemy enters this State
func enter() -> void:
	pass

## What happens when the enemy exits this State
func exit() -> void:
	pass
	

func process( _delta : float ) -> EnemyState:
	return null


func physics( _delta : float ) -> EnemyState:
	return null
