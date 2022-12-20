extends Node

export var ability_once_how_much = 5 #ogni 5 lvl
export var warrior = false
export var wizard = false
export var rogue = false

func _ready():
	pass



"""
The dictionaries listed below describe abilities for playable classes
"""
export var class_warrior_dictionary ={
	"5":"First Aid", # recover 15%hp
	"10":"Shield Bash", # Shield bash make the enemy 1 square further + dmg
	"15":"Parry", # focus on parrying the next hit (phisical)
	"20":"Strenghten", # Focus on dealing double damage next attack
	"25":"Thoughtness", # Next 3 turns damage received is halved
	"30":"Heavy Strike" # Next attack deals 4x damage but skip a turn
}
export var class_wizard_dictionary ={
	## ga
	"5":"Arcane Study", # increase dmg dealt by magic by 25% (stackable)
	"10":"Arcane Bolt", # Deal 10 base damage
	"15":"Healing power", #heal 50% HP single target
	"20":"Arcane Interrupt", # Interrupt next action of target
	"25":"Teleport", # Teleport target in choosen area. Deal 10 base damage
	"30":"Trow" # Use teleport skill with much power and trow target. 30 base damage
}
export var class_rogue_dictionary ={
	"5":"Hide", # Hide for 2 turns. Actions remove Hide
	"10":"Dash", #Increase movement by 3 squares for 5 turns
	"15":"Slit", # Deal 5 base damage. Make the enemy bleeding
	"20":"Jump", # Jump 5 squares further in any direction. Highness has no max.
	"25":"Cloacked Daggers", # Launch 5 daggers that deal 4 damage each. 4 squares away
	"30":"Assassination" # Deals 100 base damage. After it goes on Hide for 4 turns. Can't attack for 4 turns.
}
func _get_ability(var i):
	if i == 5 :
		return class_warrior_dictionary.values()
		
	



