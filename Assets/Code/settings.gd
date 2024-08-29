extends Control

@onready var general = $"main-panel/general"
@onready var sound = $"main-panel/sound"
@onready var midi = $"main-panel/midi"

@onready var midi_enabled_button = $"main-panel/midi/VBoxContainer/enabled/midi_enabled_button"

var midi_enabled = false

func _ready():
	change_setting("gen")

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


func _on_midi_enabled_button_pressed() -> void:
	if midi_enabled == false:
		midiman.open_midi()
		midi_enabled_button.text = "TRUE"
		midi_enabled = true
	elif midi_enabled == true:
		midiman.close_midi()
		midi_enabled_button.text = "FALSE"
		midi_enabled = false
