

class HseqCaseFile {

    Long caseNo
    NCR hseqRecord

    //static hasMany = [ncrRecords: NCR]

    static mapping = {
        hseqRecord cascade: 'all'
        //  id generator: 'assigned', name: 'caseNo'
    }


    static constraints = {
        caseNo(unique: true)
        hseqRecord(nullable: true)
    }

    String toString() {
        "$caseNo"
    }
}
