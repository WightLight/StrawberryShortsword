extends Enemy

func _ready():
	$HpIndicator.showHp(curHp, maxHp)


func _process(delta):
	pass

func damage(amount: int):
	.damage(amount)
	$HpIndicator.showHp(curHp, maxHp)

func attack(battle: Battle):
	battle.get_node("Player").damage(1)
