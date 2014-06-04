package website

import grails.transaction.Transactional
import website.monster.Monster
import groovyx.net.http.HTTPBuilder
import static groovyx.net.http.Method.GET
import static groovyx.net.http.ContentType.TEXT

@Transactional
class RpgService {
	
	static final Random RandomGenerator = new Random();
	
    def serviceMethod() {
		
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
	
	def heal(Hero hero){
		hero.hp++;
		return hero;
	}
	
	def getRpgQuestionApi(){
		def http = new HTTPBuilder('https://privnio-trivia.p.mashape.com')
//	
//		def html = http.get( path : '/exec', query : [q:'Groovy'] )
//		return html
//	   assert html instanceof groovy.util.slurpersupport.GPathResult
//	   assert html.HEAD.size() == 1
//	   assert html.BODY.size() == 1
//		HttpResponse<JsonNode> request = Unirest.get("https://privnio-trivia.p.mashape.com/exec?category=animal&v=1&method=getQuestions").header("X-Mashape-Authorization", "<mashape-key>").asJson();
	}
}
