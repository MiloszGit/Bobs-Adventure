extends Area2D


@onready var anim = $AnimatedSprite2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		anim.play("Collected")
		queue_free()
		
		#Game.coins += 1
