#import <Cordova/CDV.h>

#import <AVFoundation/AVFoundation.h>

typedef CDVPluginResult* (^CDVPluginCommandHandler)(CDVInvokedUrlCommand*);

int const STOPPED = 0;
int const INITIALIZING = 1;
int const STARTED = 2;

@interface CDVSpeechSynthesis : CDVPlugin


@property (retain) NSString* delegateCallbackId;
@property (retain, strong) AVSpeechSynthesizer *speechSynthesizer;
@property (nonatomic, assign) CDVCommandStatus status;
@property (nonatomic, assign) int state;


- (void)speak:(CDVInvokedUrlCommand*)command;
- (void)cancel:(CDVInvokedUrlCommand*)command;
- (void)pause:(CDVInvokedUrlCommand*)command;
- (void)resume:(CDVInvokedUrlCommand*)command;
- (void)stop:(CDVInvokedUrlCommand*)command;
- (void)startup:(CDVInvokedUrlCommand*)command;
- (void)shutdown:(CDVInvokedUrlCommand*)command;
- (void)isLanguageAvailable:(CDVInvokedUrlCommand*)command;

@end
