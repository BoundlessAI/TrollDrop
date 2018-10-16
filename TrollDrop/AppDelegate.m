//
//  AppDelegate.m
//  TrollDrop
//
//  Created by Alexsander Akers on 4/30/16.
//  Copyright © 2016 Pandamonia LLC. All rights reserved.
//

#import "AppDelegate.h"

#import "Sesame+Utilities.h"
#import <Sesame/Sesame-Swift.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    struct SesameProperties sesameProperties = SesameUtilities.propertiesFromFile;
    Sesame.shared = [[Sesame alloc] initWithAppId: sesameProperties.appId
                                             auth: sesameProperties.auth
                                        versionId: sesameProperties.versionId
                                           userId: sesameProperties.userId
                     ];

    return YES;
}

@end
