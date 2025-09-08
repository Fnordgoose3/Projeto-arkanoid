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
	var sorteio = irandom(9);

	if (sorteio == 9){
		instance_create_layer(x,y,"items", obj_item_powerup);
	}

}