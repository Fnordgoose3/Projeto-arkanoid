// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_colisao_blocos(){
	
	//Rebatendo a bola
	move_bounce_all(true);
	//Destruindo o bloco
	instance_destroy(other);
	//Somando pontos
	global.pontuacao += 5;
	
	//Verificar e atualizar o recorde
	if (global.pontuacao > global.recorde){
		global.recorde = global.pontuacao;	
	}
}

function scr_sorteio_powerup(){

	randomise();
	
	var sorteio_item1 = irandom_range(1,10);
	var sorteio_item2 = irandom_range(1,20);
	
	if(sorteio_item1 == 1){
		instance_create_layer(x,y,"instances", obj_item_powerup);
		audio_play_sound(snd_item_powerup, 10, false);
	}else if (sorteio_item2 == 1){
		instance_create_layer(x,y,"instances", obj_item_powerup_down);
		audio_play_sound(snd_item_powerup, 10, false);
	}
}