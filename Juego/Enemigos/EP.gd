extends KinematicBody2D

export var velocidad = 80.0

var gravedad = 100.0
var movimiento = Vector2.ZERO

onready var animacion = $AnimatedSprite
onready var detector_jugador = $DetectorJugador
onready var detector_rebote = $DetectorRebote/CollisionShape2D

func _physics_process(_delta):
	caer()
	caminar()
	
# warning-ignore:return_value_discarded
	move_and_slide(movimiento, Vector2.UP)


func caer():
	if not is_on_floor():
		movimiento.y = gravedad


func caminar():
	if not animacion.is_playing():
		animacion.play('Caminar')
		
	movimiento.x = velocidad	


func _on_DetectorJugador_body_entered(body):
	body.respawn()


func _on_DetectorRebote_body_entered(body):
	body.impulsar()
