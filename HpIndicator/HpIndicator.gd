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

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
