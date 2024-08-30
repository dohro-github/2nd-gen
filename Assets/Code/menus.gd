extends Control

@onready var settings_menu = $settings
@onready var nav_drawer = $"Nav-drawer"

var is_in_nav = false

func _on_settings_pressed() -> void:
	settings_menu.show()

func _on_nav_bar_pressed() -> void:
	if is_in_nav == false:
		nav_drawer.show()
		is_in_nav = true
	elif is_in_nav == true:
		nav_drawer.hide()
		is_in_nav = false
