extends Sprite

const base_script = preload("res://Nucleobase.gd")
var timer = Timer.new()
var size = 64

var temp_select

func _ready() -> void:
	randomize()
	position = Vector2(128, 128)
	var a = new_base("A")
	var t = new_base("T")
	var c = new_base("C")
	var g = new_base("G")
#	var a2 = new_base("A")
#	var t2 = new_base("T")
#	var c2 = new_base("C")
#	var g2 = new_base("G")
	getrandom().extend(getrandom())
	getrandom().extend(getrandom())
	getrandom().extend(getrandom())
#	t.extend(c)
#	c.extend(g)
#	a.printseq()
#	a2.pair(t)
#	c2.pair(g)
#	a.extend(c)
#	c.extend(a2)
#	a2.extend(c2)
#	timer.connect("timeout", self, "pair_random")
#	timer.wait_time = 1
#	timer.one_shot = true
#	add_child(timer)
#	timer.start()

func _process(delta: float) -> void:
	pass
#	var angle = randf() * 4
#	print(angle)
#	var speed = 100
#	position = position + Vector2(cos(angle* -PI/2.0), -sin(angle* -PI/2.0)) * (speed * delta)

func new_base(base):
	var new_base = base_script.new(base)
	new_base.position = Vector2(randf() * size - size/2, randf() * size - size/2)
	new_base.set_name("Nucleobase") 
	self.add_child(new_base)
	return new_base

func _draw() -> void:
	draw_rect(Rect2(-size, -size, size*2, size*2), Color(0, 0, 0, 1), false, 1)

func getrandom():
	for c in get_children():
		if c.name == "Nucleobase":
			print("Lookup:", c, "Current:", temp_select)
			if c.pair == null and c.next == null and c.prev == null and c != temp_select:
				temp_select = c
				return c
