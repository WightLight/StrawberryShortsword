extends TextureButton

var weapon: Weapon
var target: Enemy

func assign(_w: Weapon, _t: Enemy):
	weapon = _w
	target = _t


func _ready():
	pass # Replace with function body.


func _on_AttackOption_pressed():
	weapon.attack(target)
