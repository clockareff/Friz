/*
 * Kobold2D™ --- http://www.kobold2d.org
 *
 * Copyright (c) 2010-2011 Steffen Itterheim. 
 * Released under MIT License in Germany (LICENSE-Kobold2D.txt).
 */

#import "AppDelegate.h"

@implementation AppDelegate

-(void) initializationComplete
{
        
    [MGWU loadMGWU:@"0windmill1ormandale2cortemadera3sacredheart4universityofmichigan"];
    [MGWU forceFacebook];
    [MGWU setExtraFacebookPermissions:@[ @"user_birthday", @"user_education_history", @"user_about_me", @"user_location", @"user_relationships", @"user_religion_politics", @"user_work_history", @"user_hometown", @"friends_birthday", @"friends_hometown", @"friends_location", @"friends_education_history", @"friends_work_history" ,/* , @"friends_about_me", @"access_token", @"friends_relationships",@"friends_religion_politics"*/]];
    [MGWU dark];
    
    
/*
 @"name",
 @"first_name",
 @"last_name",
 @"username",
 @"gender",
 @"locale",
 @"age_range",
 @"user_about_me",
 @"user_activities",
 @"user_birthday",
 @"user_education_history",
 @"user_hometown",
 @"user_location",
 @"user_relationships", (this might me a little sensitive)
 @"user_religion_politics", (also sensitive)
 @"user_work_history",
 
 @"friends_about_me",
 @"friends_activities",
 @"friends_birthday",
 @"friends_education_history",
 @"friends_hometown",
 @"friends_location",
 @"friends_relationships", (this might me a little sensitive)
 @"friends_religion_politics", (also sensitive)
 @"friends_work_history",
 */

#ifdef KK_ARC_ENABLED
	CCLOG(@"ARC is enabled");
#else
	CCLOG(@"ARC is either not available or not enabled");
#endif
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    NSLog(@"%@", url);
    // attempt to extract a token from the url
    return [MGWU handleURL:url];
}

-(id) alternateView
{
	return nil;
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    [director stopAnimation];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    [director startAnimation];
}

-(void) applicationWillResignActive:(UIApplication *)application
{
    [director pause];
}

-(void) applicationDidBecomeActive:(UIApplication *)application
{
    [director resume];
}

@end
