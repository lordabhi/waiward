
/**
 * Created by Abhishek on 5/14/2015.
 */
enum NcrState {

    New("New"),
    DispositionProposed("Disposition Proposed"),
    DispositionApproved("Disposition Approved"),
    Closed("Closed")

    final String value

    NcrState(String value) { this.value = value }

    String toString() { value }
    String getKey() { name() }
}
