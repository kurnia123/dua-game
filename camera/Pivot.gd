extends Position2D

onready var parent = $'..'

func _ready():
	update_pivot_angle()
	
func _physics_process(delta):
	update_pivot_angle()

func update_pivot_angle():
	rotation = parent.motion.angle()
