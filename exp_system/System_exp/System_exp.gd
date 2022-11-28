extends Node2D


var class_modifier_values = [1,1,1,1,5] #health, stamina, magika, exp modifier, ability unlock every lvl
var entity_exp
var entity_exp_cap = 100
var entity_level = 1
## METHODS
func _ready():
	entity_exp = 0
	entity_exp_cap = 100
	entity_level = 1
	
func _level_up():
	_exp_cap()
## get exp and sum to entity exp
func _get_exp(var i):
	
	entity_exp +=i
	if entity_exp_cap<= entity_exp:
		_level_up()
		
func _attribute_increase():pass
func _ability_unlock():pass
func _level_cap():pass
## EXP CAP based on level and class modifier
func _exp_cap():
	entity_exp_cap = entity_level*1.5*entity_level/2*class_modifier_values[4]
	
## Class modifier inherith by parent class that modify exp gains, hp, stamina etc
func _class_modifiers(var i):
	class_modifier_values = i
 
