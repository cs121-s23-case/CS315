extends Node2D
var enemy = preload("res://enemy.tscn")

var rng = RandomNumberGenerator.new()


func _ready():
	pass
	
func _process(delta):
	pass

func _on_timer_timeout() -> void:
	print("Timer timeout triggered")
	var random_number_x = rng.randf_range(-300.0, 300.0)
	var newEnemy = enemy.instantiate()
	add_child(newEnemy)
	newEnemy.scale = Vector2(1, 1)
	newEnemy.position = Vector2(random_number_x,-50)
	print("enemy spawned at", newEnemy.position)
	get_node("/root/Game_Controller").add_child(newEnemy)
