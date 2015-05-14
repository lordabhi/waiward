/**
 * Created by Abhishek on 5/14/2015.
 */
enum NcrSource {

    Internal("Internal"),
    External("External"),
    Customer("Customer")

    final String value

    NcrSource(String value) { this.value = value }

    String toString() { value }
    String getKey() { name() }
}