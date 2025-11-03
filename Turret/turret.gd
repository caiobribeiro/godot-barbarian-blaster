extends Node3D


@export var projectile: PackedScene

@onready var berrow: MeshInstance3D = $TurretBase/TurretTop/Visor/Berrow


func _on_timer_timeout() -> void:
	var shot = projectile.instantiate()
	add_child(shot)
	shot.global_position = berrow.global_position
