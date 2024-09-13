extends CharacterBody2D
@export var bullet_resource = preload("res://bullet.tscn")


func _process(_delta: float) -> void:
	if Input.is_action_pressed("input_left"):
		self.position.x += -5;
	if Input.is_action_pressed("input_right"):
		self.position.x += 5;
	if Input.is_action_pressed("up"):
		self.position.y += -5;
	if Input.is_action_pressed("down"):
		self.position.y += 5;
	if Input.is_action_just_pressed("shoot"):
		var bullet = bullet_resource.instantiate()
		bullet.position.x = self.position.x+20
		bullet.position.y = self.position.y
		bullet.set_name("bullet")
		get_node("/root/Game_Controller").add_child(bullet)
