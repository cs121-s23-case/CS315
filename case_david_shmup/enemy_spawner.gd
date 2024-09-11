extends Node2D

var enemy = preload("res://enemy.tscn")

var rng = RandomNumberGenerator.new()


func _ready():
	pass
	
func _process(delta):
	pass

func _on_timer_timeout():
	var en = enemy.instantiate()
	en.position.x =  rng.randf_range(10.0, 100.0)
	en.position.y = -30
	en.set_name("enemy")
	get_node("/root/SpaceShooterGame").add_child(en)
	
