extends Sprite

var seq35 = ["T", "A", "G", "C"]
var seq53 = ["A", "T", "C", "G"]

func _ready():
	pass

func _draw():
	var label = Label.new()
	var font = label.get_font("")
	label.free()
	draw_string(font, Vector2(64, 64), str(seq35))
