extends Node2D

var taken = false


func _on_Area2D_body_entered(body):
	if not taken:
		taken = true
		$AudioStreamPlayer2D.play()
		$AnimationPlayer.play("die")
		get_tree().call_group("GameState", "coin_up")

func die():
	queue_free()
