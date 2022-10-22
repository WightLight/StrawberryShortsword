extends Enemy

func _ready():
	$HpIndicator.showHp(curHp, maxHp)


func _process(delta):
	pass

func damage(amount: int):
	.damage(amount)
	$HpIndicator.showHp(curHp, maxHp)

func attack(player: Player):
	player.damage(1)
