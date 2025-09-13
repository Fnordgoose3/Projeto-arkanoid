/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
instance_destroy(other);

var updownorshot = irandom_range(1,3);

if(updownorshot == 1){
	audio_play_sound(snd_collect_powerup, 10, false);
	movement_speed = 12;
	alarm[2] = 7*60;
}else if (updownorshot == 2){

	audio_play_sound(snd_derrota, 10, false);
	movement_speed = 4;
	alarm[2] = 7*60;
}else{
	show_message("TIROS!!!!");
}





