extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
#var scene = preload("res://item.tscn")
#var node = scene.instance()
#弾丸シーンのインスタンスを1つだけ作成し、
#クリックするたびにそれをプレイヤーの親の子として
#追加しようとしているのです。
#これは、弾丸インスタンスがまだ親を持たない状態で、
#初めてクリックしたときに動作します。
#クリックするたびに新しい弾丸インスタンスを
#作成する必要があります。
var create = false
func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed and create == true:
			print("Left button was clicked at ", event.position)
			var scene = preload("res://item.tscn")
			var node = scene.instance()
			node.position = get_global_mouse_position()
			add_child(node)

var static_create = false
func _on_Button_button_down():
	create = true
	static_create = false

func _on_Button2_button_down():
	create = false
	static_create = true

func _on_Button2_mouse_entered():
	create = false

func _on_Button2_mouse_exited():
	if static_create == false:
		create = true
