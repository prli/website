package website

import website.monster.Monster;


class RpgController {
	
	static final int FINAL_LEVEL = 101;
	static final int ZERO_HP = 0;
	
	static final Random RandomGenerator = new Random();
	
	def index() {
		return render(view:"start", model: [activePage: "RPGPage"]);
	}
	
	def startGame() {
		Hero hero = new Hero();
		Floor floor = new Floor();
		Monster monster = Monster.get(RandomGenerator.nextInt(Monster.count()) + 1);
		int score = 0;
		return render(view:"rpg", model: [activePage: "RPGPage", hero: hero, floor: floor, score: score, monster: monster]);
	}
	
	def playGame() {
		int score = params.int("score");
		int floorLevel = params.int("floorLevel");
		Floor floor = new Floor(floorLevel);
		int heroHp = params.int("heroHp");
		int heroMp = params.int("heroMp");
		Hero hero = new Hero(heroHp, heroMp);
		Monster monster = Monster.get(RandomGenerator.nextInt(Monster.count()) + 1);
		hero = fight(hero, monster);
		if(hero?.hp <= ZERO_HP || floor?.level >= FINAL_LEVEL){
			hero.hp = 0;
			return endGame(hero, floor, score, monster);
		}else{
			floor?.level++;
			score++;
			return render(view:"rpg", model: [activePage: "RPGPage", hero: hero, floor: floor, score: score, monster: monster]);
		}
	}
	
	def endGame(Hero hero, Floor floor, int score, Monster monster) {
		return render(view:"finish", model: [activePage: "RPGPage", hero: hero, floor: floor, score: score, monster: monster ]);
	}
	
	def fight(Hero hero, Monster monster){
		int heroRoll = RandomGenerator.nextInt(hero.attack);
		int monsterRoll = RandomGenerator.nextInt(monster.attack);
		int difference = heroRoll - monsterRoll;
		int resultHp;
		if(difference < 0){
			resultHp = 2 * (monsterRoll - heroRoll);
		}else{
			resultHp = difference;
		}
		hero.hp -= resultHp
		return hero;
	}
	
	def healHero(){
		int score = params.int("score");
		int heroHp = params.int("heroHp");
		int heroMp = params.int("heroMp");
		Hero hero = new Hero(heroHp, heroMp);
		Monster monster = Monster.get(params.int("monsterId"));
		int floorLevel = params.int("floorLevel");
		Floor floor = new Floor(floorLevel);
		hero = heal(hero);
		return render(view:"rpg", model: [activePage: "RPGPage", hero: hero, floor: floor, score: score, monster: monster]);
	}
	
	def heal(Hero hero){
		hero.hp++;
		return hero;
	}
	
}
