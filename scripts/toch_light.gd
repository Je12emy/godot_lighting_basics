extends PointLight2D

@export var min_flicker_interval: float = 0.05
@export var max_flicker_interval: float = 0.2
@export var min_energy: float = 0.1
@export var max_energy: float = 0.5

func _ready():
	%Timer.start()


func _on_timer_timeout():
 	# Randomize the light's energy to create a flicker effect
	self.energy = randf_range(min_energy, max_energy)
	
	# Restart the timer with a random interval
	%Timer.wait_time = randf_range(min_flicker_interval, max_flicker_interval)
	%Timer.start()
