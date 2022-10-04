extends Control

func _ready():
	DatosPlayer.reset()

func _on_BotonIniciar_pressed():
	MusicaGolobal.replay()
	get_tree().change_scene("res://Juego/Niveles/Nivel1v2.tscn")
