extends Control

func _ready():
	$Puntaje.text = "Puntaje: {0}".format({"0": DatosPlayer.generar_puntaje()})


func _on_BotonMenuPrincipal_pressed():
	get_tree().change_scene("res://Juego/Menus/MenuPrincipal.tscn")
