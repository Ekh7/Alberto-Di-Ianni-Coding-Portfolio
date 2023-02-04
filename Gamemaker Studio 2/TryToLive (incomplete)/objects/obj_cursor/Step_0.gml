if global.sleep = 0 or global.eat = 0 or global.timer = 0 {
	instance_deactivate_layer("Instances")
	instance_deactivate_layer("statBars")
	instance_activate_layer("failScreens")
	instance_activate_layer("failButtons")
}