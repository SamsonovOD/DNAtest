extends Sprite

class_name Nucleobase

var base = ""
var pair = null
var next = null
var prev = null

func _init(base):
	if base == "A" or base == "T" or base == "G" or base == "C":
		self.base = base
	else:
		push_error("Bad base!")

func _ready():
	pass

func _process(delta: float) -> void:
	pass
#	var my_random_number = randi() % 2 - 1
#	var speed = 0.5
#	var target = position + Vector2(float(randi() % 2)*speed -(speed/2), float(randi() % 2)*speed -(speed/2))
#	print(-(position/speed))
#	if Rect2(-64, -64, 128, 128).has_point(position):
#		position = target
#	else:
#		target = Vector2(abs(position.x-speed), abs(position.y-speed))
#		print(target)
#		position = target

func _to_string() -> String:
	var string = "N("+base
	if next != null:
		string += ", n: "+next.base
	if prev != null:
		string += ", b: "+prev.base
	if pair != null:
		string += ", b: "+pair.base
	string += ")"
	return string

func _draw():
	var label = Label.new()
	var font = label.get_font("")
	label.free()
	draw_string(font, Vector2(0, 0), str(base))

func pairing(base):
	self.pair = base
	
func extend(base):
	if base != null:
		self.next = base
		base.prev = self

func printseq():
	print(self)
	if next != null:
		next.printseq()

func getfirst():
	if prev != null:
		return prev.getfirst()
	else:
		return self
