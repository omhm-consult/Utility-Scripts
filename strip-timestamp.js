// strip-timestamp.js

var fs = require('fs');
var path = require('path');




function getTimestamp(line, regex){
    return line.match(regex)
}

function getNewfilename(line){

    line = line.split(regex)
    return line[0]+line[1]

}

function getLines(text_file){
    var text = fs.readFileSync(text_file, 'utf8')
    dirty_data = text.split('\n')
    return dirty_data
}
function copyFile(source, target) {
    var rd = fs.createReadStream(source);
    var wr = fs.createWriteStream(target);
    return new Promise(function(resolve, reject) {
      rd.on('error', reject);
      wr.on('error', reject);
      wr.on('finish', resolve);
      rd.pipe(wr);
    }).catch(function(error) {
      rd.destroy();
      wr.end();
      throw error;
    });
}


function formatData(data){
    var data_format = {
        "new_filename": "",
        "old_filename": "",
        "old_filedata": ""
    } 
    data_format.old_filename = data

    data_format.new_filename = getNewfilename(data)
    //console.log(data_format.new_filename)
    data_format.old_filedata = getTimestamp(data)
    let new_name = data_format.new_filename
    copyFile(data_format.old_filename, )

    // Delete Files
    /*
    try {
        fs.unlinkSync(data_format.old_filename)
        //file removed
    } catch(err) {
        console.error(err)
    }
    */
    return data_format
}


var walk = function(dir, done) {
  var results = [];
  fs.readdir(dir, function(err, list) {
    if (err) return done(err);
    var i = 0;
    (function next() {
      var file = list[i++];
      if (!file) return done(null, results);
      file = path.resolve(dir, file);
      fs.stat(file, function(err, stat) {
        if (stat && stat.isDirectory()) {
          walk(file, function(err, res) {
            results = results.concat(res);
            next();
          });
        } else {
          formatData(file);
          results.push(file);
          next();
        }
      });
    })();
  });
};

function getData(dirpath){
    let data =  walk(dirpath, function(err, results) {
        if (err) throw err;
        console.log(results);
        return results
      });
  
    console.log(data)
}

let dirpath = './'
let project_path
let regex = / \(.*\)/

let data = getData(dirpath)
//console.log(data)
