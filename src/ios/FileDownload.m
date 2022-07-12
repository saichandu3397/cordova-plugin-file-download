#import "FileDownload.h"
#import <Cordova/CDVPlugin.h>

@implementation FileDownload

- (void)downloadFile:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;

    @try{
        NSDictionary* options = [command.arguments objectAtIndex:0];

        NSString *uri   = options[@"uri"];
        NSString *fileName = options[@"fileName"];

        NSData *pdfData = [[NSData alloc] initWithContentsOfURL:[
        NSURL URLWithString:uri]];

        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentsDirectory = [paths objectAtIndex:0];
        NSString *filePath = [documentsDirectory stringByAppendingPathComponent:fileName];
        [pdfData writeToFile:filePath atomically:YES];

        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:filePath];

    }
    @catch(NSException *exception) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];

    }
    

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end