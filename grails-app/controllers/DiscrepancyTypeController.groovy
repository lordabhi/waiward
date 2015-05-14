

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DiscrepancyTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DiscrepancyType.list(params), model:[discrepancyTypeInstanceCount: DiscrepancyType.count()]
    }

    def show(DiscrepancyType discrepancyTypeInstance) {
        respond discrepancyTypeInstance
    }

    def create() {
        respond new DiscrepancyType(params)
    }

    @Transactional
    def save(DiscrepancyType discrepancyTypeInstance) {
        if (discrepancyTypeInstance == null) {
            notFound()
            return
        }

        if (discrepancyTypeInstance.hasErrors()) {
            respond discrepancyTypeInstance.errors, view:'create'
            return
        }

        discrepancyTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'discrepancyType.label', default: 'DiscrepancyType'), discrepancyTypeInstance.id])
                redirect discrepancyTypeInstance
            }
            '*' { respond discrepancyTypeInstance, [status: CREATED] }
        }
    }

    def edit(DiscrepancyType discrepancyTypeInstance) {
        respond discrepancyTypeInstance
    }

    @Transactional
    def update(DiscrepancyType discrepancyTypeInstance) {
        if (discrepancyTypeInstance == null) {
            notFound()
            return
        }

        if (discrepancyTypeInstance.hasErrors()) {
            respond discrepancyTypeInstance.errors, view:'edit'
            return
        }

        discrepancyTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DiscrepancyType.label', default: 'DiscrepancyType'), discrepancyTypeInstance.id])
                redirect discrepancyTypeInstance
            }
            '*'{ respond discrepancyTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DiscrepancyType discrepancyTypeInstance) {

        if (discrepancyTypeInstance == null) {
            notFound()
            return
        }

        discrepancyTypeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DiscrepancyType.label', default: 'DiscrepancyType'), discrepancyTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'discrepancyType.label', default: 'DiscrepancyType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
