extends Camera3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var t = Time.get_ticks_msec() / 1000.0
	position.x = 10 * cos(t)
	position.z = 10 * sin(t)
	look_at(Vector3.ZERO)
