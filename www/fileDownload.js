var exec = require('cordova/exec');

exports.download = function (arg0, success, error) {
   
        exec((filePath) => {
            success(filePath);
        }, error, 'FileDownload', 'downloadFile', [arg0]);

    
};