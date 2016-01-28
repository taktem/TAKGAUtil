//
//  TAKGAUtil.m
//  TAKGAUtil
//
//  Created by 西村 拓 on 2015/08/22.
//  Copyright (c) 2015年 TakuNishimura. All rights reserved.
//

#import "TAKGAUtil.h"

#import <Google/Analytics.h>

@implementation TAKGAUtil

/**
 *  DefaultSetting
 *
 *  @param trackingId
 */
+ (void)defaultSetting {
    // Configure tracker from GoogleService-Info.plist.
    NSError *configureError;
    [[GGLContext sharedInstance] configureWithError:&configureError];
    NSAssert(!configureError, @"Error configuring Google services: %@", configureError);
    
    [GAI sharedInstance].trackUncaughtExceptions = YES;
    [GAI sharedInstance].logger.logLevel = kGAILogLevelWarning;
}

/**
 *  allowIDFACollection
 */
+ (void)allowIDFACollection:(BOOL)allow {
    [GAI sharedInstance].defaultTracker.allowIDFACollection = allow;
}

/**
 *  Set LogLebel
 *  Default : kGAILogLevelWarning
 *
 *  @param logLebel GAILogLevel
 */
+ (void)setLogLevel:(GAILogLevel)logLebel {
    [GAI sharedInstance].logger.logLevel = logLebel;
}

/**
 *  Tracking Screen
 *
 *  @param screenName screenName
 */
+ (void)trackScreen:(NSString *)screenName {
    [[[GAI sharedInstance] defaultTracker] set:kGAIScreenName
                                         value:screenName];
    [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createScreenView] build]];
    [[GAI sharedInstance].defaultTracker set:kGAIScreenName
                                       value:nil];
}

/**
 *  Event Tracking
 */
+ (void)trackEventWithCategory:(NSString *)category
                        action:(NSString *)action
                         label:(NSString *)label
                         value:(NSUInteger)value {
    [[GAI sharedInstance].defaultTracker send:[
                                               [GAIDictionaryBuilder createEventWithCategory:category
                                                                                      action:action
                                                                                       label:label
                                                                                       value:@(value)]
                                               build]];
}

/**
 *  Event Tracking With Screen Name
 */
+ (void)trackEventWithScreen:(NSString *)screenName
                    category:(NSString *)category
                      action:(NSString *)action
                       label:(NSString *)label
                       value:(NSUInteger)value {
    [[GAI sharedInstance].defaultTracker set:kGAIScreenName
                                       value:screenName];
    [[GAI sharedInstance].defaultTracker send:[
                                               [GAIDictionaryBuilder createEventWithCategory:category
                                                                                      action:action
                                                                                       label:label
                                                                                       value:@(value)]
                                               build]];
    [[GAI sharedInstance].defaultTracker set:kGAIScreenName
                                       value:nil];
}

@end
