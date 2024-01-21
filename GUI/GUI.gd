extends CanvasLayer


func update_lives(lives):
	$Control/TextureRect/HBoxContainer/LabelLifes.text = str(lives)


func update_coins(coins):
	$Control/TextureRect/HBoxContainer/CoinCount.text = str(coins)
