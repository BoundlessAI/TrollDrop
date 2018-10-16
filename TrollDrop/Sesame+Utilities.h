//
//  NSObject+Sesame_Utilities.h
//  AAKeyboardApp
//
//  Created by Akash Desai on 10/12/18.
//  Copyright © 2018 sonson. All rights reserved.
//

#import <Foundation/Foundation.h>

struct SesameProperties {
    NSString* appId;
    NSString* auth;
    NSString* versionId;
    NSString* userId;
};

@interface SesameUtilities : NSObject
+ (struct SesameProperties) propertiesFromFile;
@end
