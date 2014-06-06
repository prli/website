package website.rpg

class Monster {
	String name;
	int attack;
	int hp;
	int mp;
	
	int level;
	
    static constraints = {
		name blank: false, nullable: false
		attack blank: false, nullable: false
		hp blank: false, nullable: false
		mp blank: false, nullable: false
		level blank: false, nullable: false
    }
}
