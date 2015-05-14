

class HseqCaseFile {

    String caseNo

    static mapping = {
    }


    static constraints = {
        caseNo(unique: true)
    }

    String toString() {
        "$caseNo"
    }
}
