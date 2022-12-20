extends HSlider

func _set_max():
	self.max_value = $".".get_parent().get_node("Sys_exp").entity_exp_cap
func _set_value():
	self.value = $".".get_parent().get_node("Sys_exp").entity_exp
