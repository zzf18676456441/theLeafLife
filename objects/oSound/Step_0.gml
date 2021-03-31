/// @description Insert description here
// You can write your code in this editor
if(flag == 1){
	if(!audio_is_playing(Sound1)){
		audio_play_sound(Sound2, 1000, false);
		flag = 2;
	}
}else if (flag == 2){
	if(!audio_is_playing(Sound2)){
		audio_play_sound(Sound1, 1000, false);
		flag = 1;
	}
}