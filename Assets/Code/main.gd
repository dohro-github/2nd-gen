extends Control

@onready var side_bar_vbox = $"Panel/side-bar/VBoxContainer"

@export var spawn_button: PackedScene

var spawn

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if spawn_button:
		spawn = spawn_button.instantiate()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_add_pressed() -> void:
	spawn = spawn_button.instantiate()
	side_bar_vbox.add_child(spawn)
