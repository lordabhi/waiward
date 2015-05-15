

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class NCRController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond NCR.list(params), model:[NCRInstanceCount: NCR.count()]
    }

    def show(NCR NCRInstance) {
        respond NCRInstance
    }

    def create() {
        respond new NCR(params)
    }

    @Transactional
    def save(NCR NCRInstance) {
        if (NCRInstance == null) {
            notFound()
            return
        }

        if (NCRInstance.hasErrors()) {
            respond NCRInstance.errors, view:'create'
            return
        }

        def hseqCaseFileInstance = new HseqCaseFile(params)

        def lastCaseFileRec = HseqCaseFile.executeQuery("from HseqCaseFile order by caseNo desc ", [offset:0, max:1])


        if(lastCaseFileRec == null || lastCaseFileRec.size() == 0){
            hseqCaseFileInstance.caseNo = 1
        }else{
            hseqCaseFileInstance.caseNo = Integer.parseInt(lastCaseFileRec.get(0).caseNo) + 1
        }

        println(lastCaseFileRec);


      // hseqCaseFileInstance.caseNo = 1

        hseqCaseFileInstance.save()

        NCRInstance.hseqCaseFile = hseqCaseFileInstance

        NCRInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'NCR.label', default: 'NCR'), NCRInstance.id])
                redirect NCRInstance
            }
            '*' { respond NCRInstance, [status: CREATED] }
        }
    }

    def edit(NCR NCRInstance) {
        respond NCRInstance
    }

    @Transactional
    def update(NCR NCRInstance) {
        if (NCRInstance == null) {
            notFound()
            return
        }

        if (NCRInstance.hasErrors()) {
            respond NCRInstance.errors, view:'edit'
            return
        }

        NCRInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'NCR.label', default: 'NCR'), NCRInstance.id])
                redirect NCRInstance
            }
            '*'{ respond NCRInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(NCR NCRInstance) {

        if (NCRInstance == null) {
            notFound()
            return
        }

        NCRInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'NCR.label', default: 'NCR'), NCRInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'NCR.label', default: 'NCR'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
