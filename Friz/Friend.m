//
//  Person.m
//  FrizTest
//
//  Created by Colin Lockareff on 7/11/13.
//
//

#import "Friend.h"
/*
 NSString *username;
 GCObject *profilePicture;
 NSMutableArray *friends;
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
 */

@implementation Friend

- (id) init//: (NSDictionary*) user
{
    if ((self = [super init]))
    {
//        NSDictionary *userInfo = user;
//        //username = [userInfo ObjectForKey: @"user_username"]
//        friends = [[NSMutableArray alloc] init];
    }
    return self;
}


//-(void) addFriend: (Person*) buddy
//{
//    [friends addObject:buddy];
//}

-(NSString*) getUsername
{
    return username;
}

//+(GCObject) getProfilePicture
//{
//    return profilePicture;
//}

-(NSMutableArray*) getFriends
{
    return friends;
}

-(int) getAge
{
    return age;
}

-(NSString*) getBirthday
{
    return birthday;
}

-(NSString*) getAddress
{
    return address;
}

-(NSString*) getHometown
{
    return hometown;
}

-(NSString*) getMiddleSchool
{
    return middleSchool;
}

-(NSString*) getHighSchool
{
    return highSchool;
}

-(NSString*) getCollege
{
    return college;
}

-(NSString*) getWork
{
    return work;
}

-(NSString*) getGender
{
    return gender;
}

-(NSString*) getRelationship
{
    return relationship;
}

-(NSString*) getReligion
{
    return religion;
}

-(NSString*) getPoliticalParty
{
    return politicalParty;
}

-(NSMutableArray*) getFamily
{
    return family;
}

-(NSMutableArray*) getWorkHistory
{
    return workHistory;
}

-(void) setUsername: (NSString*) name
{
    username = name;
}

//-(void) setProfilePicture: (GCObject*) pic
//{
//    profilePicture = pic;
//}

-(void) setAge: (int) initAge
{
    age= initAge;
}

-(void) setBirthday: (NSString*) bday
{
    birthday = bday;
}

-(void) setAddress: (NSString*) add
{
    address = add;
}

-(void) setHometown: (NSString*) home
{
    hometown = home;
}

-(void) setMiddleSchool: (NSString*) midSchool
{
    middleSchool = midSchool;
}

-(void) setHighSchool: (NSString*) hiSchool
{
    highSchool = hiSchool;
}

-(void) setCollege: (NSString*) col
{
    college = col;
}

-(void) setWork: (NSString*) wrk
{
    work = wrk;
}

-(void) setGender: (NSString*) gen
{
    gender = gen;
}

-(void) setRelationship: (NSString*) relat
{
    relationship = relat;
}

-(void) setReligion: (NSString*) relig
{
    religion = relig;
}

-(void) setPoliticalParty: (NSString*) politPar
{
    politicalParty = politPar;
}

-(NSString*) createBirthday: (NSString*) month: (NSString*) day
{
    NSString *newBirthday;
    if ([month isEqual: @"01"])
    {
        newBirthday = [NSString stringWithFormat:@"January %@", day];
    }
    else if ([month isEqual: @"02"])
    {
        newBirthday = [NSString stringWithFormat:@"February %@", day];
    }
    else if ([month isEqual: @"03"])
    {
        newBirthday = [NSString stringWithFormat:@"March %@", day];
    }
    else if ([month isEqual: @"04"])
    {
        newBirthday = [NSString stringWithFormat:@"April %@", day];
    }
    else if ([month isEqual: @"05"])
    {
        newBirthday = [NSString stringWithFormat:@"May %@", day];
    }
    else if ([month isEqual: @"06"])
    {
        newBirthday = [NSString stringWithFormat:@"June %@", day];
    }
    else if ([month isEqual: @"07"])
    {
        newBirthday = [NSString stringWithFormat:@"July %@", day];
    }
    else if ([month isEqual: @"08"])
    {
        newBirthday = [NSString stringWithFormat:@"August %@", day];
    }
    else if ([month isEqual: @"09"])
    {
        newBirthday = [NSString stringWithFormat:@"September %@", day];
    }
    else if ([month isEqual: @"10"])
    {
        newBirthday = [NSString stringWithFormat:@"October %@", day];
    }
    else if ([month isEqual: @"11"])
    {
        newBirthday = [NSString stringWithFormat:@"November %@", day];
    }
    else
    {
        newBirthday = [NSString stringWithFormat:@"December %@", day];
    }
    
    
    return newBirthday;
    
    
}

-(int) createAge: (NSString*) year
{
    int value;
    BOOL success = [[NSScanner scannerWithString:year] scanInteger:&value];
    
    if (success)
    {
        return 2013 - value;
    }
    else
    {
        return 0;
    }
    
}


@end
