class BootStrap {

    def init = { servletContext ->
        new DiscrepancyType(type: "OS&D").save()
        new DiscrepancyType(type: "Wrong Material").save()
        new DiscrepancyType(type: "Testing Failure").save()
    }
    def destroy = {
    }
}
