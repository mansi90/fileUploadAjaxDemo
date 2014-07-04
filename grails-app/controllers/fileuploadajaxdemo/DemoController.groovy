package fileuploadajaxdemo

import grails.converters.JSON
import org.springframework.web.multipart.MultipartFile

class DemoController {

    def index() {}

    def submitDemoForm() {
        // you can do anything with your file and data, like upload it, etc.
        if (!params.inputFile?.isEmpty()) {
            MultipartFile multipartFile = params.inputFile
            println(multipartFile?.originalFilename)
        }
        render([] as JSON)
    }
}
