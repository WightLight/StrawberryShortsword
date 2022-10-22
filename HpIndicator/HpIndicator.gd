extends Node2D

export(Texture) var texture

func showHp(curHp: int, maxHp: int):
	for n in $Hearts.get_children():
		$Hearts.remove_child(n)
		n.free()
	
	for n in range(curHp):
		var sprite = Sprite.new()
		sprite.position.x = n * 100
		sprite.texture = texture
		$Hearts.add_child(sprite)

func _on_health_changed(curHp, maxHp):
	showHp(curHp, maxHp)
