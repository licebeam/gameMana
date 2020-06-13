/// @description Insert description here
// You can write your code in this editor
self.randNumber = random_range(1, 2);
self.itemToGenerate = randomItem(self.randNumber);
hitPoints = 1;
self.holdAnim = true;
image_speed = 0;
self.animationFrames = 0;
self.sprite = breakablePlantSpr;
layer = 1;

//flash
self.isFlashing = false;