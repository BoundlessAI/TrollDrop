//
//  Sesame+Utilities.m
//  AAKeyboardApp
//
//  Created by Akash Desai on 10/12/18.
//  Copyright © 2018 sonson. All rights reserved.
//

#import "Sesame+Utilities.h"

@implementation SesameUtilities

static struct SesameProperties _sesameProperties;

+ (struct SesameProperties) propertiesFromFile;
{
    if ([_sesameProperties.appId length] == 0) {
        NSDictionary *sesameDict = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Sesame" ofType:@"plist"]];
        struct SesameProperties sesameProperties = {
            .appId = [sesameDict objectForKey:@"appId"],
            .auth = [sesameDict objectForKey:@"auth"],
            .versionId = [sesameDict objectForKey:@"versionId"],
            .userId = [sesameDict objectForKey:@"userId"]
        };
        _sesameProperties = sesameProperties;
    }

    if ([_sesameProperties.appId length] == 0
        || [_sesameProperties.auth length] == 0
        || [_sesameProperties.versionId length] == 0
        || [_sesameProperties.userId length] == 0) {
        [NSException raise:@"Invalid Sesame.plist" format:@"Need to set valid API credentials"];
    }

    return _sesameProperties;
}

@end
