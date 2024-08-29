extends Node

func open_midi():
	OS.open_midi_inputs()
	print(OS.get_connected_midi_inputs())

func close_midi():
	OS.close_midi_inputs()
