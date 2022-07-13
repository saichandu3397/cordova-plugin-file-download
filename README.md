 # Cordova Plugin File Download


 This plugin is used to download the files in both Android and Ios natively,

 

Disclaimer: This plugin is the forked version of the [Luka313/integrator-cordova-plugin-downloader plugin](https://github.com/Luka313/integrator-cordova-plugin-downloader) downloader plugin with support of  download in ios


### Idea:

Idea behind this development is to use a single plugin for both ios and android which can download the files and return the downloaded file path. Hence used the forked version of above mentioned plugin which is used only in android.

 ### Plugin Info:


 In Android,
 	path to directory can be mentioned and file is downloaded at respective location and respective location is returned in callback
	It downloads files using Android Download Manager

 In Ios, 
	the file is downloaded in apps sandbox enviroment NSDocumentDirectory
	with the downloaded path we could give option for the users to save or share the file

### Install

Currently its not pushed into to npm repository


use can plugin using 

		cordova plugin add https://github.com/saichandu3397/cordova-plugin-file-download/
		
		
		
### Credits and License
Based on [Luka313/integrator-cordova-plugin-downloader plugin](https://github.com/Luka313/integrator-cordova-plugin-downloader) 
