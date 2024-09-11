extends CharacterBody2D
@export var bulletScene = preload("res://BulletScene.tscn")


func _process(_delta: float) -> void:
	if Input.is_action_pressed("input_left"):
		self.position.x += -5;
	if Input.is_action_pressed("input_right"):
		self.position.x += 5;
	if Input.is_action_pressed("input_up"):
		self.position.y += -5;
	if Input.is_action_pressed("input_down"):
		self.position.y += 5;
	if Input.is_action_pressed("shoot"):
		self.position.x += -5;
		var bullet = bulletScene.instantiate()
		bullet.position.x = self.position.x
		bullet.position.y = self.position.y
		bullet.set_name("bullet")
		get_node("/root/Node2D").add_child(bullet)
		
