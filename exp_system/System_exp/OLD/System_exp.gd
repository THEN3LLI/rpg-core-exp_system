extends Node2D

## EXP SCRIPT that modify and calculate level, experience, attributes
##
## -
##
## 

## Health, stamina, magika, exp modifier, ability unlock every lvl
var class_modifier_values = [1,1,1,1]
## EXP of the entity
var entity_exp 
## Entity exp cap, maximum exp until level up
var entity_exp_cap = 100 
## Entity actual level
var entity_level = 1

# METHODS
## Func ready that set everything to a LVL1 value
func _ready():
	entity_exp = 0
	entity_exp_cap = 100
	entity_level = 1
## INIT function that set the values from the parent
func _init_by_value(var i_exp, i_cap, i_level):
	entity_exp = i_exp 
	entity_exp_cap = i_cap
	entity_level = i_level
	
## Get exp and sum to entity exp
func _get_exp(var i):
	entity_exp +=i
	if entity_exp_cap<= entity_exp:
		var exp_overflow = i-entity_exp_cap
		_level_up()
		
		#entity_exp = 0
		_get_exp(exp_overflow)
## When is called make the level going +1. Also call _attribute_increase() and _exp_cap for a re-calc
func _level_up():
	
	entity_level +=1
	
	#_attribute_increase()
	_exp_cap()
## Calculate new exp CAP based on level and class modifier value
func _exp_cap():
	entity_exp_cap += entity_level*2.5*class_modifier_values[3]
	
	
func _level_cap():pass
## EXP CAP based on level and class modifier
		
func _attribute_increase():
	get_parent()._set_attribute(class_modifier_values)
	
#func _ability_unlock():pass

## Class modifier inherith by parent class that modify exp gains, hp, stamina etc
func _class_modifiers(var i):
	class_modifier_values = i
 
