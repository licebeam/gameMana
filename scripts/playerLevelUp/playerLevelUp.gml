if(self.currentExp >= 100){
	self.level += 1;
	self.currentExp = 0;
	self.maxHp += 4;
	self.hp = self.maxHp;
	self.strength += 1;
	self.defense += 1;
}