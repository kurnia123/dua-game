extends Area2D

onready var root_node = get_parent()

func _ready():
	pass

func _input(event):
	if event.is_action_pressed("ui_accept"):
		$AnimationPlayer.play("open")
		#move_scene()
		#get_overlapping_bodies()[0].play_walk_in_animation() # 0 will be our player

func move_scene():
	if get_overlapping_bodies().size() > 0:
		Global.level_index += 1
		print("next : ",root_node.name)
		get_tree().change_scene(Global.level[Global.level_index])
		#Global.switch_scene("res://scence/level/level2.tscn")
