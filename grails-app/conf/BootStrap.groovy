import website.FaqQuestion;

class BootStrap {

    def init = { servletContext ->
		
		if(FaqQuestion.count() == 0){
			new FaqQuestion(question: "What is your favourite board game?", answer: "Settler of Catan is pretty cool game.").save();
			new FaqQuestion(question: "What is your favourite movie?", answer: "Forrest Gump and Tangled").save();
			new FaqQuestion(question: "Where do you want to go for vacation?", answer: "Somewhere in Europe, Japan or Korea, if I got the money. If not, then my living room is nice too.").save();
			new FaqQuestion(question: "What is the best comedy TV show of all time?", answer: "Friends, hands down").save();
			
		}
		
    }
    def destroy = {
    }
}
