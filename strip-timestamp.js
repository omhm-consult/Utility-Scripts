// strip-timestamp.js

var fs = require("fs");



function getTimestamp(line){
    return line.match(/ \(.*\)/)
}

function getNewfilename(line){

    line = line.split(/ \(.*\)/)
    return line[0]+line[1]

}

function getLines(text_file){
    var text = fs.readFileSync(text_file, 'utf8')
    dirty_data = text.split('\n')
    return dirty_data
}

var text_file = "strip.txt"



function getData(filenames){
 
    let data = []
    for (let name of filenames){

        var data_format = {
            "new_filename": "",
            "old_filedata": ""
        } 
        data_format.new_filename = getNewfilename(name)
        //console.log(data_format.new_filename)
        data_format.old_filedata = getTimestamp(name)
        data.push(data_format)
    }
    return data
}

let filenames = getLines(text_file)
console.log(filenames)

let data = getData(filenames)
console.log(data)


