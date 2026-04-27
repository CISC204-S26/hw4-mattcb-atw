extends Area2D

@export var message := "You found a larp piece."

var player_nearby = false

func _process(_delta):
	if player_nearby and Input.is_action_just_pressed("Interact"):
		print(message)

func _on_body_entered(body):
	if body.name == "Player":
		player_nearby = true

func _on_body_exited(body):
	if body.name == "Player":
		player_nearby = false
