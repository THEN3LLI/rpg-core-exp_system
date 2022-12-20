extends Node


export var entity_exp = 0
export var entity_exp_cap = 100
export var entity_level = 1

func _ready():
	pass
## initialize 
func _initialize():
	entity_exp = $".".get_parent().entity_exp
	entity_level = $".".get_parent().entity_level
	entity_exp_cap = entity_exp*entity_level
	
func _entity_get_exp(var i):
	for x in i: #if x exp è maggiore del cap
		
		entity_exp += 1 # aggiungi exp
		if entity_exp>= entity_exp_cap: #if entity_exp is bigger than cap
			_entity_level_up()
		
	
func _entity_level_up():
	entity_level += 1
	print(($Sys_ability._get_ability(entity_level)))
	
	
	entity_exp_cap = entity_exp+entity_exp_cap
	$".".get_parent()._level_up()
	

