// http://docs.phonegap.com/en/3.5.0/guide_platforms_ios_plugin.md.html#iOS%20Plugins

@implementation CDVLocationManager {

}


  - (void)myMethod:(CDVInvokedUrlCommand*)command
  {
      CDVPluginResult* pluginResult = nil;
      NSString* myarg = [command.arguments objectAtIndex:0];

      if (myarg != nil) {
          pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
      } else {
          pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Arg was null"];
      }
      [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
  }
