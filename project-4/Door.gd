extends Area2D

@export var next_scene: String
@export var is_final_door := false

func _on_body_entered(body):
	if body.name == "Player":
		if is_final_door:
			if GameState.side_room_1_done and GameState.side_room_2_done:
				get_tree().change_scene_to_file(next_scene)
			else:
				print("The final room is locked. Explore both side rooms first.")
		else:
			get_tree().change_scene_to_file(next_scene)
