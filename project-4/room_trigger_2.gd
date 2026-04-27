extends Area2D

@onready var label = $"../Room1Text"

func _on_body_entered(body):
	if body.name == "Player":
		GameState.side_room_1_done = true
		label.visible = true
		print("Room 2 complete")
