extends Panel

@onready var nav_drawer = $"Nav-drawer"

var nav_drawer_shown = false

func _ready() -> void:
	if nav_drawer:
		nav_drawer.hide()

func _on_navbutton_pressed() -> void:
	if nav_drawer:
		if nav_drawer_shown == false:
			nav_drawer.show()
			nav_drawer_shown = true
		elif nav_drawer_shown == true:
			nav_drawer.hide()
			nav_drawer_shown = false
