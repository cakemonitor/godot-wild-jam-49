extends Sprite

const ballScene = preload("res://pre-jam_test/Ball.tscn")


func _process(_delta):
	if (Input.is_action_just_pressed("new_ball")):
		new_ball()


func new_ball():
	var ball = ballScene.instance()
	ball.position = position
	get_parent().add_child(ball)


func _on_New_Ball_Button_button_down():
	new_ball()
