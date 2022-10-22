extends Node2D

class_name Enemy

export(int) var maxHp
export(int) var curHp


func _ready():
	pass


func _process(delta):
	pass

func damage(amount: int):
	curHp -= amount
