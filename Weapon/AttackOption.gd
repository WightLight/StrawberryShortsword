extends TextureButton

class_name AttackOption

signal attack_finished

var weapon: Weapon
var target: Enemy

func assign(_w: Weapon, _t: Enemy):
	weapon = _w
	target = _t
	set_icon(_w.icon_texture)


func _ready():
	pass # Replace with function body.

func set_icon(texture: Texture):
	texture_normal = texture

func _on_AttackOption_pressed():
	weapon.attack(target)
	emit_signal("attack_finished")
