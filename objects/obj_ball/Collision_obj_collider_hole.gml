
global.vidas--;

if(global.vidas < 1){
	
	global.pontuacao = 0;
	global.vidas = 3;
	room_goto(Room1);
}
else{
	instance_destroy();
	instance_create_layer(obj_player.x,ystart,"instances",obj_ball);
}