extends Node2D

class_name Player

signal health_changed

export var maxHp = 6
export var curHp = 6

func _ready():
	$HpIndicator.showHp(curHp, maxHp)

func damage(amount: int):
	curHp -= amount
	emit_signal("health_changed", curHp, maxHp)

func animate_attack():
	$AnimationPlayer.play("Player Attack")

func get_weapons():
	return $Animatable/Weapons.get_children()
