var exec = require('cordova/exec');

exports.download = function (arg0, success, error) {
   
        exec((message,filePath) => {
            console.log("message: "+message);
            console.log("filePath: "+filePath);
            success(filePath);

        }, error, 'FileDownload', 'downloadFile', [arg0]);

    
};