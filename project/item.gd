extends Area2D

# 画面サイズ
var screen:Rect2

# 移動速度
var velocity:Vector2

func _ready():
	# 画面サイズを取得
	screen = get_viewport_rect()

	# 移動速度をランダムで決定
	velocity.x = rand_range(-300, 300)
	velocity.y = rand_range(-300, 300)
#
#func _process(delta):
#	# 移動処理
#	position += velocity * delta
#
#	# 画面のはしでバウンドさせる
#	if position.x < 0:
#		# 左側
#		position.x = 0
#		velocity.x *= -1
#	if position.y < 0:
#		# 上側
#		position.y = 0
#		velocity.y *= -1
#	if position.x > screen.size.x:
#		# 右側
#		position.x = screen.size.x
#		velocity.x *= -1
#	if position.y > screen.size.y:
#		# 下側
#		position.y = screen.size.y
#		velocity.y *= -1


#func _on_item_input_event(viewport, event, shape_idx):
#	# 何らかの入力イベントが発生
#	if event is InputEventMouseButton:
#		# マウスボタンの入力イベント
#		if event.is_pressed():
#			# クリックしたので、インスタンスを破棄
#			queue_free()
