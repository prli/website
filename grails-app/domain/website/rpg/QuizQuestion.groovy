package website.rpg

class QuizQuestion {
	
	String question
	String answer
	Category category
	String author
	int score
	String regexp

    static constraints = {
		question blank: false, nullable: false
		answer blank: false, nullable: false
    }
}
