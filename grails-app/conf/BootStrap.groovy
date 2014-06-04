import website.FaqQuestion
import website.Role
import website.User
import website.UserRole
import website.monster.Monster;

class BootStrap {

    def init = { servletContext ->
		
		def superAdminRole = new Role(authority: 'ROLE_SUPERADMIN').save(flush: true)
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
		def guestRole = new Role(authority: 'ROLE_GUEST').save(flush: true)
  
		def testUser = new User(username: 'test', password: 'test').save(flush: true)
		def adminUser = new User(username: 'admin', password: 'admin').save(flush: true)
		def superAdminUser = new User(username: 'superAdmin', password: 'superAdmin').save(flush: true)
		
		UserRole.create testUser, userRole, true
		UserRole.create adminUser, adminRole, true
		UserRole.create superAdminUser, superAdminRole, true
		
		assert User.count() == 3
		assert Role.count() == 4
		assert UserRole.count() == 3
		
		if(FaqQuestion.count() == 0){
			new FaqQuestion(question: "What is your favourite board game?", answer: "Settler of Catan is pretty cool game.").save();
			new FaqQuestion(question: "What is your favourite movie?", answer: "Forrest Gump and Tangled").save();
			new FaqQuestion(question: "Where do you want to go for vacation?", answer: "Somewhere in Europe, Japan or Korea, if I got the money. If not, then my living room is nice too.").save();
			new FaqQuestion(question: "What is the best comedy TV show of all time?", answer: "Friends, hands down").save();
			
		}
		
		if(Monster.count() == 0){
			new Monster(name: "Target dummy", attack: 1, hp: 1, mp: 1, level: 1).save();
			new Monster(name: "Apple worm", attack: 2, hp: 5, mp: 10, level: 2).save();
			new Monster(name: "Pear worm", attack: 3, hp: 5, mp: 10, level: 3).save();
			new Monster(name: "Bad worm", attack: 4, hp: 15, mp: 10, level: 4).save();
			new Monster(name: "Apple tree", attack: 5, hp: 25, mp: 10, level: 5).save();
			new Monster(name: "Apple pie", attack: 6, hp: 35, mp: 10, level: 6).save();
			new Monster(name: "Apple", attack: 7, hp: 45, mp: 10, level: 7).save();
			new Monster(name: "Apple bread", attack: 8, hp: 55, mp: 10, level: 8).save();
			new Monster(name: "Apple snake", attack: 9, hp: 65, mp: 10, level: 9).save();
			new Monster(name: "Apple bush", attack: 10, hp: 75, mp: 10, level: 10).save();
			
		}
		
    }
    def destroy = {
    }
}
