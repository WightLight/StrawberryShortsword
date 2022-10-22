extends Enemy

func _ready():
	pass


func _process(delta):
	$HpText.text = str(curHp)
