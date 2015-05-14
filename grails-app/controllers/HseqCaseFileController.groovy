

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class HseqCaseFileController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond HseqCaseFile.list(params), model:[hseqCaseFileInstanceCount: HseqCaseFile.count()]
    }

    def show(HseqCaseFile hseqCaseFileInstance) {
        respond hseqCaseFileInstance
    }

    def create() {
        respond new HseqCaseFile(params)
    }

    @Transactional
    def save(HseqCaseFile hseqCaseFileInstance) {
        if (hseqCaseFileInstance == null) {
            notFound()
            return
        }

        if (hseqCaseFileInstance.hasErrors()) {
            respond hseqCaseFileInstance.errors, view:'create'
            return
        }

        hseqCaseFileInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'hseqCaseFile.label', default: 'HseqCaseFile'), hseqCaseFileInstance.id])
                redirect hseqCaseFileInstance
            }
            '*' { respond hseqCaseFileInstance, [status: CREATED] }
        }
    }

    def edit(HseqCaseFile hseqCaseFileInstance) {
        respond hseqCaseFileInstance
    }

    @Transactional
    def update(HseqCaseFile hseqCaseFileInstance) {
        if (hseqCaseFileInstance == null) {
            notFound()
            return
        }

        if (hseqCaseFileInstance.hasErrors()) {
            respond hseqCaseFileInstance.errors, view:'edit'
            return
        }

        hseqCaseFileInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'HseqCaseFile.label', default: 'HseqCaseFile'), hseqCaseFileInstance.id])
                redirect hseqCaseFileInstance
            }
            '*'{ respond hseqCaseFileInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(HseqCaseFile hseqCaseFileInstance) {

        if (hseqCaseFileInstance == null) {
            notFound()
            return
        }

        //HseqRecord result = HseqRecord.find("delete HseqRecord as a where a.h.id = ?\", [artistId]")

       //HseqRecord.executeUpdate("delete HseqRecord as a where a.hseqCaseFile.caseNo = ?", [caseNo :hseqCaseFileInstance.caseNo])

        //def results = HseqRecord.findByHseqCaseFileCaseNo(caseNo : hseqCaseFileInstance.caseNo)
//
//        def results = HseqRecord.findAll()
//
//        for (int i = 0; i < results.size(); i++) {
//
//            if(results(i).caseNo.equals(hseqCaseFileInstance.caseNo)){
//                results(i).delete
//            }
//
//        }


        hseqCaseFileInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'HseqCaseFile.label', default: 'HseqCaseFile'), hseqCaseFileInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'hseqCaseFile.label', default: 'HseqCaseFile'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
