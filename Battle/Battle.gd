extends Node

class_name Battle

var attack_option_scene = load("res://Weapon/AttackOption.tscn")

func _ready():
	show_attack_options()

func show_attack_options():
	print($Player.get_weapons())
	for enemy in $Enemies.get_children():
		for weapon in $Player.get_weapons():
			var attack_option: AttackOption = attack_option_scene.instance()
			enemy.add_child(attack_option)
			attack_option.assign(weapon, enemy)
			attack_option.rect_position.x = 50
			attack_option.rect_position.y = -125
			attack_option.connect("attack_finished", self, "_on_attack_finished")
			attack_option.connect("pressed", $Player, "animate_attack")

func hide_attack_options():
	# I guess just destroy them
	pass

func _on_attack_finished():
	for enemy in $Enemies.get_children():
		enemy.attack($Player)
