// http://docs.phonegap.com/en/3.5.0/guide_platforms_ios_plugin.md.html#iOS%20Plugins
#import "CDVSpeechSynthesis.h"


@implementation CDVSpeechSynthesis

- (void) continueSpeakingSyntheticSpeaking{
    [self.speechSynthesizer continueSpeaking];
}


- (void) stopSyntheticSpeaking{
    [self.speechSynthesizer stopSpeakingAtBoundary:AVSpeechBoundaryImmediate];
}


- (void) playSyntheticVoice:(NSString*) text usingLangage:(NSString*) language{
    
    AVSpeechSynthesisVoice *voice;
    
    if (language==nil){
        voice = [AVSpeechSynthesisVoice voiceWithLanguage: [AVSpeechSynthesisVoice currentLanguageCode]];
        
    } else{
        voice = [AVSpeechSynthesisVoice voiceWithLanguage: language];
        
    }
    
    AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:text];
    utterance.voice = voice;
    utterance.rate *= 0.12;
    [self.speechSynthesizer speakUtterance:utterance];
}




# pragma mark CDVPlugin


- (void) startup:(CDVInvokedUrlCommand*) command {
    
    
    [self.commandDelegate runInBackground:^{
          self.speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
        [self playSyntheticVoice:@"Synthetizer is ready" usingLangage:@"en-GB"];
        NSString* payload = nil;
        // Some blocking logic...
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:payload];
        // The sendPluginResult method is thread-safe.
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }];
    
}


- (void) shutdown:(CDVInvokedUrlCommand*) command {
    
    
    [self.commandDelegate runInBackground:^{
        self.speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
        [self playSyntheticVoice:@"Synthetizer is ready" usingLangage:@"en-GB"];
        NSString* payload = nil;
        // Some blocking logic...
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:payload];
        // The sendPluginResult method is thread-safe.
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }];
    
}



- (void) speak:(CDVInvokedUrlCommand*) command {
    [self.commandDelegate runInBackground:^{
        NSString* payload = nil;
        // Some blocking logic...
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:payload];
        [self playSyntheticVoice:@"Speak is running" usingLangage:@"en-GB"];
        // The sendPluginResult method is thread-safe.
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }];
}




- (void) cancel:(CDVInvokedUrlCommand*) command {
    [self.commandDelegate runInBackground:^{
        NSString* payload = nil;
        // Some blocking logic...
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:payload];
       
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }];
}


- (void) pause:(CDVInvokedUrlCommand*) command {
    [self.commandDelegate runInBackground:^{
        NSString* payload = nil;
        // Some blocking logic...
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:payload];
        
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }];
}


- (void) resume:(CDVInvokedUrlCommand*) command {
    [self.commandDelegate runInBackground:^{
        NSString* payload = nil;
        // Some blocking logic...
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:payload];
        
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }];
}


- (void) stop:(CDVInvokedUrlCommand*) command {
    [self.commandDelegate runInBackground:^{
        NSString* payload = nil;
        // Some blocking logic...
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:payload];
        
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }];
}

- (void) isLanguageAvailable:(CDVInvokedUrlCommand*) command {
    [self.commandDelegate runInBackground:^{
        NSString* payload = nil;
        // Some blocking logic...
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:payload];
        
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }];
}


@end
