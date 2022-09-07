extends RigidBody2D

const off_screen_position = 650
const small_bounce_velocity = 40
const low_pitch = 0.9
const high_pitch = 1.1


func _process(_delta):
	if (position.y > off_screen_position):
		queue_free()


func _on_Ball_body_entered(_body):
	if (linear_velocity.length() > small_bounce_velocity):
		$AudioStreamPlayer.pitch_scale = rand_range(low_pitch, high_pitch)
		$AudioStreamPlayer.play()
