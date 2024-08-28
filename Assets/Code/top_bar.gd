extends Panel

@onready var settings_menu = $settings

var nav_drawer_shown = false

# "This might actually be a step sequencer, not a tracker" -Quellusdev 8/27/24
# "Its a tracker" -Quellusdev 8/27/24

func _ready():
	settings_menu.hide()

func _on_exit_pressed() -> void:
	get_tree().quit()

func _on_settings_pressed() -> void:
	settings_menu.show()
