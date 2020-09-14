extends KinematicBody2D

const up = Vector2(0,-1)
const gravity = 20
const jf = 400
const mfs = 400
const ms = 250
const accel = 15
var dj = 2


var motion = Vector2()

func _process(delta):
	if Input.is_action_pressed("esc"):
		get_tree().change_scene("res://scenes/main_menu.tscn")

func _physics_process(delta):
	
	motion.y += gravity
	if motion.y > mfs:
		motion.y = mfs
	
	motion.x = clamp(motion.x,-ms,ms)
	
	if Input.is_action_pressed("ui_left"):
		motion.x -= accel
		$Sprite.flip_h = -1
	elif Input.is_action_pressed("ui_right"):
		motion.x += accel
		$Sprite.flip_h = 0
	else:
		motion.x = lerp(motion.x, 0 ,0.1)
		
	if is_on_floor():
		dj = 2
		
	if Input.is_action_just_pressed("ui_up"):
		if dj > 0:
			motion.y = -jf
			dj -= 1
	
	motion = move_and_slide(motion,up)
