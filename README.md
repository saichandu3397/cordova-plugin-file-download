 Downloader Cordova plugin 

This plugin is designed to support downloading files 

In Android

using Android DownloadManager.


In Ios

using NSDocumentDirectory where users can access the file


this plugin is extension support for the ios

[Luka313/integrator-cordova-plugin-downloader plugin]([Luka313/integrator-cordova-plugin-downloader plugin](https://github.com/Luka313/integrator-cordova-plugin-downloader) 
 


Usage
Create download request. For more info on parameter use refer to DownloadRequest.

let request = {
	//Location of the resource to download
	uri: '',
	//fileName
	fileName: '',
	//This will override the content type declared in the server's response.
	mimeType: '',
	//Set whether this download should be displayed in the system's Downloads UI. True by default (for android only)
	visibleInDownloadsUi: true, (for android only)
	//Control when a system notification is posted by the download manager.
	notificationVisibility: 0,(for android only)
	// Set the local destination to a path within the application's external files directory (for android only)
	destinationInExternalFilesDir: {
		dirType: '',
		subPath: '' //Path within the external directory, including the destination filename
	},
	//Set the local destination to a path within the application's public external storage directory (for android only)
	destinationInExternalPublicDir: {
		dirType: '',
		subPath: '' //Path within the external directory, including the destination filename
	},
	//Set the local destination for the downloaded file. (for android only)
	destinationUri: '',
	//Additional HTTP headers to be included with the download request.
	headers: [{header: 'Authorization', value: 'Bearer iaksjfd89aklfdlkasdjf'}]
};
Starts download and returns location uri on completion

cordova.plugins.Download.download(request,
		(location) => { alert('File is downloaded at' + location) },
		(err) => { alert(err)})
		
		
		
Credits and License
Based on [Luka313/integrator-cordova-plugin-downloader plugin](https://github.com/Luka313/integrator-cordova-plugin-downloader) 
