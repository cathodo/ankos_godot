extends Node

### I don't know how to do this properly yet
# onready var player = preload("res://Player/Player.tscn").instance()
# onready var level = preload("res://Levels/TestArea.tscn").instance()
onready var player = get_node("Player")
onready var pos = get_node("Level").get_node("PlayerSpawn").translation

func _ready():
	PlayerSpawn()
	get_node("UI/MainMenu").main_menu()

func PlayerSpawn():
	player.translation = pos

func _on_PauseMenu_restart_game():
	PlayerSpawn()
	get_node("UI/MainMenu").main_menu()
