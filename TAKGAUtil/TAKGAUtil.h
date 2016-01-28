//
//  TAKGAUtil.h
//  TAKGAUtil
//
//  Created by 西村 拓 on 2015/08/22.
//  Copyright (c) 2015年 TakuNishimura. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GAILogger.h"

@interface TAKGAUtil : NSObject

/**
 *  DefaultSetting
 *
 *  @param trackingId
 */
+ (void)defaultSetting;

/**
 *  allowIDFACollection
 */
+ (void)allowIDFACollection:(BOOL)allow;

/**
 *  Set LogLebel
 *  Default : kGAILogLevelWarning
 *
 *  @param logLebel GAILogLevel
 */
+ (void)setLogLevel:(GAILogLevel)logLebel;

/**
 *  Tracking Screen
 *
 *  @param screenName screenName
 */
+ (void)trackScreen:(NSString *)screenName;

/**
 *  Event Tracking
 */
+ (void)trackEventWithCategory:(NSString *)category
                        action:(NSString *)action
                         label:(NSString *)label
                         value:(NSUInteger)value;

/**
 *  Event Tracking With Screen Name
 */
+ (void)trackEventWithScreen:(NSString *)screenName
                    category:(NSString *)category
                      action:(NSString *)action
                       label:(NSString *)label
                       value:(NSUInteger)value;

@end
