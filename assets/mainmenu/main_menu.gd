class_name MainMenu
extends Control

@onready var Start_Button = $MarginContainer/HBoxContainer/VBoxContainer/Start_Button as Button
@onready var Exit_Button = $MarginContainer/HBoxContainer/VBoxContainer/Quit_Button as Button
@onready var start_level = preload("res://scenes/world.tscn") as PackedScene


func _ready():
	Start_Button.button_down.connect(on_start_pressed)
	Exit_Button.button_down.connect(on_exit_pressed)


func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)

func on_exit_pressed() -> void:
	get_tree().quit()
