#import "FileDownload.h"
#import <Cordova/CDVPlugin.h>



@implementation FileDownload

- (void)downloadFile:(CDVInvokedUrlCommand*)command
{

    NSDictionary* options = [command.arguments objectAtIndex:0];

    NSString *uri   = options[@"uri"];
    NSURL *url = [NSURL URLWithString:uri];
    NSString *fileName = options[@"fileName"];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];

    __block NSURLSessionDownloadTask* task = [session downloadTaskWithRequest:request completionHandler : ^(NSURL*   responseUrl, NSURLResponse*  response, NSError*  error){
        if (error != nil)
        {
            CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
            [task suspend];
        }
        else
        {
            
            NSArray  *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
            NSString *documentsDirectory = [paths objectAtIndex:0];
            NSString *filePath = [documentsDirectory stringByAppendingPathComponent:fileName];
            NSData *fileData = [[NSData alloc] initWithContentsOfURL:responseUrl];
            [fileData writeToFile:filePath atomically:YES];

            
            CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:filePath];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
            [task suspend];
        }

    }];

    [task resume];

}

@end