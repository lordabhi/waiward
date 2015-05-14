
/**
 * Created by Abhishek on 5/14/2015.
 */
abstract class HseqRecord {

    String title
    String description

    String recordType
    String enteredBy
    String reportedBy
    String qualityCoordinator
    String status

    HseqCaseFile hseqCaseFile

    static constraints = {
        recordType()
        enteredBy()
        reportedBy()
        qualityCoordinator()
        status()

        title()
        description()

        hseqCaseFile(nullable: true)
    }
}
