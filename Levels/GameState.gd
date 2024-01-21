extends Node2D


var lives = 3
var coins = 0
const target_number_of_coins = 10


func _ready():
	add_to_group("GameState")
	update_GUI()


func hurt(hazardName):
	lives -= 1
	$Player.hurt(hazardName)
	update_GUI()
	if lives < 0:
		end_game()


func update_GUI():
	$GUI.update_lives(lives)


func coin_up():
	coins +=1
	get_tree().call_group("GUI", "update_coins", coins)
	if (coins % target_number_of_coins) == 0: #test if coins is a multiple of target_number_of_coins
		life_up()


func life_up():
	lives +=1
	update_GUI()


func end_game():
	get_tree().change_scene("res://Levels/GameOver.tscn")


func win_game():
	get_tree().change_scene("res://Levels/Victory.tscn")
