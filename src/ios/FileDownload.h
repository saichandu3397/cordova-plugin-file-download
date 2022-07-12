#import <Cordova/CDVPlugin.h>




@interface FileDownload : CDVPlugin

- (void)downloadFile:(CDVInvokedUrlCommand*)command;

@end