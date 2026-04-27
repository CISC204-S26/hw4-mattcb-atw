extends Area2D

func _on_body_entered(body):
	if body.name == "Player":
		GameState.side_room_2_done = true
		print("Room 2 complete")
