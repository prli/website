package website
import grails.plugin.springsecurity.annotation.Secured
import website.rpg.Monster;

@Secured(['permitAll'])
class RpgController {
	
	RpgService rpgService;
	
	static final int FINAL_LEVEL = 101;
	static final int ZERO_HP = 0;
	
	def index() {
		return render(view:"start", model: [activePage: "RPGPage"]);
	}
	
	def startGame() {
		Hero hero = new Hero();
		Floor floor = new Floor();
		Monster monster = Monster.get(rpgService.RandomGenerator.nextInt(Monster.count()) + 1);
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
		Monster monster = Monster.get(rpgService.RandomGenerator.nextInt(Monster.count()) + 1);
		hero = rpgService.fight(hero, monster);
		if(hero?.hp <= ZERO_HP || floor?.level >= FINAL_LEVEL){
			hero.hp = 0;
			return endGame(hero, floor, score, monster);
		}
		floor?.level++;
		score++;
		return render(view:"rpg", model: [activePage: "RPGPage", hero: hero, floor: floor, score: score, monster: monster]);
	}
	
	def endGame(Hero hero, Floor floor, int score, Monster monster) {
		return render(view:"finish", model: [activePage: "RPGPage", hero: hero, floor: floor, score: score, monster: monster ]);
	}
		
	def healHero(){
		int score = params.int("score");
		int heroHp = params.int("heroHp");
		int heroMp = params.int("heroMp");
		Hero hero = new Hero(heroHp, heroMp);
		Monster monster = Monster.get(params.int("monsterId"));
		int floorLevel = params.int("floorLevel");
		Floor floor = new Floor(floorLevel);
		hero = rpgService.heal(hero);
		return render(view:"rpg", model: [activePage: "RPGPage", hero: hero, floor: floor, score: score, monster: monster]);
	}
	
}
