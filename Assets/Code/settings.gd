extends Control

@onready var general = $"main-panel/general"
@onready var sound = $"main-panel/sound"
@onready var midi = $"main-panel/midi"

func _on_close_pressed() -> void:
	hide()

func change_setting(mode):
	if mode == "gen":
		general.show()
		sound.hide()
		midi.hide()
	elif mode == "snd":
		general.hide()
		sound.show()
		midi.hide()
	elif mode == "mdi":
		general.hide()
		sound.hide()
		midi.show()


func _on_general_pressed() -> void:
	change_setting("gen")

func _on_sound_pressed() -> void:
	change_setting("snd")

func _on_midi_pressed() -> void:
	change_setting("mdi")
