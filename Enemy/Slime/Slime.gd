extends Enemy

signal tackle_collide

export(Texture) var healthy_texture
export(Texture) var bloodied_texture

func _ready():
	update_hp_status()


func _process(delta):
	pass

func damage(amount: int):
	.damage(amount)
	update_hp_status()


func update_hp_status():
	$HpIndicator.showHp(curHp, maxHp)
	if float(curHp) / maxHp < 0.5:
		$Sprite.texture = bloodied_texture
	else:
		$Sprite.texture = healthy_texture

var _currently_attacking
func _do_attack(player: Player):
	_currently_attacking = player
	$AnimationPlayer.play("Slime Attack")

func _on_Slime_tackle_collide():
	_currently_attacking.damage(1)
