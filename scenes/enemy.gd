extends Node2D

var ms = 0
var s = 0
var m = 0


func _process(_delta):
	if ms>9:
		s+=1
		ms=0
		
	if s>59:
		m+=1
		s=0
		
	$Label.text=str(m)+":"+str(s)+":"+str(ms)


func _on_timer_timeout() -> void:
	ms+=1
