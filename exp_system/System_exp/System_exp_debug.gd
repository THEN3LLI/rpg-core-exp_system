extends Node2D

func _ready():
	$Sys_exp.entity_exp = 0
	$Sys_exp.entity_exp_cap = 100
	$Sys_exp.entity_level = 1
	
func _level_up():pass #debug
func _debug_get_exp(var i):
	$Sys_exp._get_exp(i)


func _on_Button_button_down():
	$Sys_exp._entity_get_exp(100)
	$Label.text = "EXPERIENCE "+String($Sys_exp.entity_exp)
	$Level.text = "LEVEL "+String($Sys_exp.entity_level)
	$CAP.text = "CAP "+String($Sys_exp.entity_exp_cap)
