extends Node

class_name Battle

var attack_option_scene = load("res://Weapon/AttackOption.tscn")

func _ready():
	show_attack_options()

func show_attack_options():
	for enemy in $Enemies.get_children():
		for weapon in $Player/Weapons.get_children():
			var attack_option: AttackOption = attack_option_scene.instance()
			enemy.add_child(attack_option)
			attack_option.assign(weapon, enemy)
			attack_option.rect_position.y = -200
			attack_option.connect("attack_finished", self, "_on_attack_finished")

func hide_attack_options():
	# I guess just destroy them
	pass

func _on_attack_finished():
	for enemy in $Enemies.get_children():
		enemy.attack($Player)
