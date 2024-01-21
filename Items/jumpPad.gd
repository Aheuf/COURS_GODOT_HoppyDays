extends Area2D



func _on_jumpPad_body_entered(body):
	$AnimationPlayer.play("boost")
	body.boost()
