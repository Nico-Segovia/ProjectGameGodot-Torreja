extends Area2D


onready var detector_jugador = $DetectorJugador
onready var detector_rebote = $DetectorRebote/CollisionShape2D
onready var animacion = $AnimationPlayer
 
func _on_DetectorRebote_body_entered(body):
	desactivar_colisionadores([detector_jugador, detector_rebote])
	animacion.stop()
	animacion.play("Morir")
	body.impulsar()


func _on_body_entered(body):
	body.respawn()


func desactivar_colisionadores(colisionadores):
	for colision in colisionadores:
		colision.set_deferred('disabled', true)
		colision.set_deferred('visible', false)
