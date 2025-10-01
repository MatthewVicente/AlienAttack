extends Node2D

func _on_death_zone_area_entered(area):
	print('Deleted '+ area.name)
	area.die()
