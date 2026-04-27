extends Area2D

@onready var sprite = $"../Sprite2D"

func _on_body_entered(body):
	if body.name == "Player":
		sprite.visible = false
