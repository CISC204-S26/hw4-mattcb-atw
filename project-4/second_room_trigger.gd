extends Area2D

@onready var label = $"../Room2Text"

func _on_body_entered(body):
	if body.name == "Player":
		GameState.side_room_2_done = true
		label.visible = true
