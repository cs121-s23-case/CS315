extends RigidBody2D
@export var txtScore : Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_shape_entered(body_rid: RID, body: Node, body_shape_index: int, local_shape_index: int) -> void:
	#if body.name == "Player" or body.name == "Bullet" or body.name == "bullet":
	if body.name != "enemy":
		var game_controller = get_node("/root/Game_Controller")
		body.queue_free()
		get_node("/root/Game_Controller").incrementScore()
		self.queue_free()
	pass # Replace with function body.
