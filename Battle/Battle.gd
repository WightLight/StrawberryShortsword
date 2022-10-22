extends Node

class_name Battle

func _ready():
	$AttackOption.assign($BlueberryPike, $Slime)


func _on_AttackOption_attack_finished():
	$Slime.attack(self)
