package website.rpg



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class QuizQuestionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond QuizQuestion.list(params), model:[quizQuestionInstanceCount: QuizQuestion.count()]
    }

    def show(QuizQuestion quizQuestionInstance) {
        respond quizQuestionInstance
    }

    def create() {
        respond new QuizQuestion(params)
    }

    @Transactional
    def save(QuizQuestion quizQuestionInstance) {
        if (quizQuestionInstance == null) {
            notFound()
            return
        }

        if (quizQuestionInstance.hasErrors()) {
            respond quizQuestionInstance.errors, view:'create'
            return
        }

        quizQuestionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'quizQuestion.label', default: 'QuizQuestion'), quizQuestionInstance.id])
                redirect quizQuestionInstance
            }
            '*' { respond quizQuestionInstance, [status: CREATED] }
        }
    }

    def edit(QuizQuestion quizQuestionInstance) {
        respond quizQuestionInstance
    }

    @Transactional
    def update(QuizQuestion quizQuestionInstance) {
        if (quizQuestionInstance == null) {
            notFound()
            return
        }

        if (quizQuestionInstance.hasErrors()) {
            respond quizQuestionInstance.errors, view:'edit'
            return
        }

        quizQuestionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'QuizQuestion.label', default: 'QuizQuestion'), quizQuestionInstance.id])
                redirect quizQuestionInstance
            }
            '*'{ respond quizQuestionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(QuizQuestion quizQuestionInstance) {

        if (quizQuestionInstance == null) {
            notFound()
            return
        }

        quizQuestionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'QuizQuestion.label', default: 'QuizQuestion'), quizQuestionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'quizQuestion.label', default: 'QuizQuestion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
