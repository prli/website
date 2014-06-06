package website

import grails.transaction.Transactional
import website.rpg.Monster
import groovyx.net.http.HTTPBuilder
import static groovyx.net.http.Method.GET
import static groovyx.net.http.ContentType.TEXT

@Transactional
class RpgService {
	
	static final Random RandomGenerator = new Random();
	static final int ZERO = 0;
	static final int TWO = 2;
	
    def serviceMethod() {
		
    }
	
	def fight(Hero hero, Monster monster){
		int heroRoll = RandomGenerator.nextInt(hero.attack);
		int monsterRoll = RandomGenerator.nextInt(monster.attack);
		int difference = heroRoll - monsterRoll;
		int resultHp;
		getRpgQuestionApi();
		if(difference < ZERO){
			resultHp = TWO * (monsterRoll - heroRoll);
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
		def http = new HTTPBuilder('https://numbersapi.p.mashape.com/1729/math?fragment=true&json=true') 
		http.request( GET, TEXT ) { req ->
		  headers."X-Mashape-Authorization" = "3LFWXC4tS7Ww9SI53CUMsj19N4dQdJAx"
		 
		  response.success = { resp, reader ->
		    assert resp.statusLine.statusCode == 200
		    println "Got response: ${resp.statusLine}"
		    println "Content-Type: ${resp.headers.'Content-Type'}"
		    println reader.text
		  }
		 
		  response.'404' = {
			    println 'Not found'
			  }
		}
	}
}
