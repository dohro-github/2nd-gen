extends Control

# "This might actually be a step sequencer, not a tracker" -Quellusdev 8/27/24
# "Its a tracker" -Quellusdev 8/27/24


@onready var side_bar_vbox = $"Panel/side-bar/VBoxContainer"
#@onready var piano = $AudioStreamPlayer2D

@export var spawn_button: PackedScene

var spawn

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if spawn_button:
		spawn = spawn_button.instantiate()
	
#	OS.open_midi_inputs()
#	print(OS.get_connected_midi_inputs())

#func _input(event):
#	if event is InputEventMIDI:
#		if piano:
#			# Calculate pitch based on MIDI note
#			var midi_note = event.pitch
#			var pitch_scale = pow(2, (midi_note - 69) / 12.0)
#			piano.pitch_scale = pitch_scale
#
#			# Check if it's a note on event (you may want to check velocity too)
#			if event.message == MIDI_MESSAGE_NOTE_ON:
#				piano.play()
#			elif event.message == MIDI_MESSAGE_NOTE_OFF:
#				piano.stop()


func _on_add_pressed() -> void:
	spawn = spawn_button.instantiate()
	side_bar_vbox.add_child(spawn)
