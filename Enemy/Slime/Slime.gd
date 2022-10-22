extends Enemy

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

func attack(player: Player):
	player.damage(1)
