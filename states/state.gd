extends Node

class_name State

signal transition(state: State, new_state: String)

func Enter() -> void:
	pass
	
func Exit() -> void:
	pass
	
func Update(delta: float) -> void:
	pass
	
func Physics_Update(delta: float) -> void:
	pass
