//
//  UserProfile.h
//  FrizTest
//
//  Created by Colin Lockareff on 6/25/13.
//
//

#import <Foundation/Foundation.h>

@interface UserProfile : NSObject
{
    NSString *username;
    GCObject *profilePicture;
    int age;
    NSString *birthday;
    NSString *address;
    NSString *hometown;
    NSString *middleSchool;
    NSString *highSchool;
    NSString *college;
    NSString *work;
    NSMutableArray *workHistory;
    NSString *gender;
    NSString *relationship;
    NSMutableArray *family;
    NSString *religion;
    NSString *politicalParty;
    
    
    NSMutableArray *questions;
}

-(id)init;
-(NSMutableArray*)getQuestions;

@end
