package website

class Hero {
	int hp;
	int mp;
	int attack = 1;
	
	public Hero(){
		this.hp = 100;
		this.mp = 100;
	}
	
	public Hero(int hp, int mp){
		this.hp = hp;
		this.mp = mp;
	}
}
