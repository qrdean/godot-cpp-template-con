extends TrafficLight

func _get_next_light(p_current_light: TrafficLightType) -> TrafficLightType:
	if p_current_light == TrafficLightType.TRAFFIC_LIGHT_GO:
		return TrafficLightType.TRAFFIC_LIGHT_CAUTION
	if p_current_light == TrafficLightType.TRAFFIC_LIGHT_CAUTION:
		return TrafficLightType.TRAFFIC_LIGHT_STOP
	if p_current_light == TrafficLightType.TRAFFIC_LIGHT_STOP:
		return TrafficLightType.TRAFFIC_LIGHT_GO
	return TrafficLightType.TRAFFIC_LIGHT_STOP
