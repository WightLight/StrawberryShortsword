extends Node2D

class_name Enemy

signal health_changed
signal death

export(int) var maxHp
export(int) var curHp


func _ready():
	pass


func _process(delta):
	pass

func damage(amount: int):
	curHp -= amount
	emit_signal("health_changed", curHp, maxHp)
	if curHp <= 0:
		die()

func is_alive():
	return curHp > 0

func can_attack():
	return is_alive()

func _do_attack(player: Player):
	pass

func attack(player: Player):
	if can_attack():
		_do_attack(player)

func die():
	emit_signal("death")
	queue_free()
