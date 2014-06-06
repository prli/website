package website.rpg

class Category {

	String categoryName
	
    static constraints = {
		categoryName blank: false, nullable: false
    }
}
