extends Node

class_name Battle



func _ready():
	$Enemies/Slime/AttackOption.assign($BlueberryPike, $Enemies/Slime)


func _on_AttackOption_attack_finished():
	$Enemies/Slime.attack(self)

func show_attack_options():
	# for each enemy on the scene
	# for each weapon that can actually hit
	# Show the attack options
	# Assign the option accordingly
	pass

func hide_attack_options():
	# I guess just destroy them
	pass
