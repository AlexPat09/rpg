extends Control

func _process(delta):
	var pickerColor = $VBoxContainer/ColorPicker.color
	$ColorRect/Control/Sprite.modulate = pickerColor
