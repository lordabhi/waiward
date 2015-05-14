
class NCR extends HseqRecord{

    NcrState state
    NcrSource source
    DiscrepancyType discrepancyType

    NCR(){
        recordType= "NCR"
        enteredBy="Test User"
        reportedBy="Test User, Sales"
        qualityCoordinator="Mr. Paul Smith"
        status="Pending"
    }
    //static belongsTo = [hseqCaseFile:HseqCaseFile] //When HseqCaseFile is deleted, NCR will also be deleted too

    //static  belongsTo = HseqCaseFile

    static constraints = {

        source()
        discrepancyType()
    }
}
