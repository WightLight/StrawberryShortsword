extends Weapon

export var dmg = 1

func attack(target: Enemy):
	target.damage(dmg)

