extends Node

var className: String

func _ready():
	className = self.name

func _input(_event):
	printInput()
	pass

func _gui_input(_event):
	printGui()
	pass

func _unhandled_input(_event):
	printUnhandled()
	pass

func _unhandled_key_input(event):
	printKeyUnhandled()
	pass

func printInput():
	print(className, " calls input event")
	#stopInputPropogation()

func printUnhandled():
	print(className, " calls Unhandled Input event")
	#stopInputPropogation()

func printKeyUnhandled():
	print(className, " calls Unhandled Key Input event")
	#stopInputPropogation()

func printGui():
	print(className, " calls GUI Input event")
	#stopInputPropogation()

func stopInputPropogation():
	get_tree().get_root().set_input_as_handled()

