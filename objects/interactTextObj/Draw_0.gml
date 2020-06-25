/// @description Insert description here
// You can write your code in this editor


//draw the line of dialog on the screen and make a noise for each character
//using scribble.

if(ds_list_size(dialogMap)){
	//draw name
	scribble_draw(x,y - 10, displayName);
	//draw dialog box based on size of text;

	//draw icon indicating the key of which the player should hit to progress in dialog.
	scribble_draw(self.x, self.y, curLine);
}