if vari = false
{
	return
}
	
vari = false

other.frozen = true



instance_destroy(object_Enemy_Swarm, false)

global.EndingFlorish()

alarm_set(0, 270)
