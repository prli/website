package website

class FaqQuestion {
	
	String question;
	String answer;
	
    static constraints = {
		question blank: false, nullable: false
		answer blank: false, nullable: false
    }
}
