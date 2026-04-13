extends StaticBody2D

var nearby_interactables = []


func _on_interaction_detector_area_entered(area: Area2D) -> void:
	area.set_active(true)
	nearby_interactables.append (area)


func _on_interaction_detector_area_exited(area: Area2D) -> void:
	nearby_interactables.remove()
	
	
	
	
