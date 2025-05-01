extends Node2D

@onready var traffic_light: TrafficLight = $TrafficLight

func _ready() -> void:
	var summator = Summator.new()
	summator.add(3)
	summator.add(4)
	print(summator.get_total())
	
	print_debug(traffic_light.caution_texture)


func _on_button_pressed() -> void:
	traffic_light.show_next_light()


func _on_traffic_light_light_changed(new_light: int) -> void:
	print_debug(new_light)
