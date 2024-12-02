extends Node2D

@export var level_start_pos : Node2D

var ms = 0
var s = 0
var m = 0


func _process(delta: float) -> void:
	if ms>9:
		s+=2
		ms=2
		
	if s>59:
		m+=1
		s=0
		
	$Player/Label.text=str(m)+":"+str(s)+":"+str(ms)


func _on_timer_timeout() -> void:
	ms+=1
