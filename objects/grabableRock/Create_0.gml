/// @description Insert description here
// You can write your code in this editor
//active hitbox
self.attackable = false;
alarm[0] = 8;

dialogArray = [
"[slant][c_white]Hey, listen![/c][/slant]",
"[wave][c_yellow]Hey, pick me up![/c][/wave]",
"[wave][rainbow]I'm over here![/rainbow][/wave]",
"[pulse][c_white]Hurry Up![/c][/pulse]",
"[shake][c_white]Come here, I'm scared![/c][/shake]"
];

scribbleCreated =  dialogArray[irandom_range(0, 4)];
scribble_autotype_fade_in(scribbleCreated, 0.3, 1, false);