
if(ejected == true){
	rebate_count_wall = 0;
	audio_play_sound(snd_colisao, 10, false);
	move_bounce_solid(true);
	direction = point_direction(other.x, other.y, x,y)
}
