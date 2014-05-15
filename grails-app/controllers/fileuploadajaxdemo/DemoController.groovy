package fileuploadajaxdemo

import grails.converters.JSON
import org.springframework.web.multipart.MultipartFile

class DemoController {

    def index() {}

    def submitDemoForm() {
        // you can do anything with your file and data, like upload it, etc.
        if (!params.inputFile?.isEmpty()) {
            def file = params.inputFile
            MultipartFile multipartFile = file
            println(multipartFile?.originalFilename)
        }
        render([] as JSON)
    }
}
