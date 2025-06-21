extends Sprite2D

var score := [0, 0]
const PADDLE_SPEED : int = 500


func _on_timer_timeout():
	$Ball.new_ball()


func _on_point_left_body_entered(body):
	score[1] += 1
	$UI/PlayerScore.text = str(score[1])
	$UI/Timer.start()

func _on_point_right_body_entered(body):
	score[0] += 1
	$UI/CPUScore.text = str(score[0])
	$UI/Timer.start()
