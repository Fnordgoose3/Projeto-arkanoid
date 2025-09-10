/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

instance_create_layer(x-25,y, "instances", obj_item_shoot);
instance_create_layer(x+25,y, "instances", obj_item_shoot);
audio_play_sound(snd_tiro,10,false);

if (powerup == true){
alarm[0] = room_speed;
}