extends KinematicBody

export var speed : float = 5.0

var velocity: Vector3 = Vector3.ZERO
var direction : Vector3 = Vector3.ZERO

onready var navigation_agent = $NavigationAgent
onready var target = get_parent().get_node("Target")

func _ready():
	navigation_agent.set_target_location(target.global_transform.origin)

func _physics_process(delta):
	var point = navigation_agent.get_next_location()
	direction = global_transform.origin.direction_to(point)
	
	velocity = velocity.linear_interpolate(direction * speed, speed * delta)
	velocity = move_and_slide(velocity, Vector3.UP)
