//
//  Friend.h
//  FrizTest
//
//  Created by Colin Lockareff on 7/11/13.
//
//

#import <Foundation/Foundation.h>



@interface Friend : NSObject
{
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
    
}
//-(void) addFriend: (Person*) buddy;
-(NSString*) getUsername;
//+(GCObject) getProfilePicture;
-(NSMutableArray*) getFriends;
-(int) getAge;
-(NSString*) getBirthday;
-(NSString*) getAddress;
-(NSString*) getHometown;
-(NSString*) getMiddleSchool;
-(NSString*) getHighSchool;
-(NSString*) getCollege;
-(NSString*) getWork;
-(NSString*) getGender;
-(NSString*) getRelationship;
-(NSString*) getReligion;
-(NSString*) getPoliticalParty;
-(NSMutableArray*) getFamily;
-(NSMutableArray*) getWorkHistory;


-(void) setUsername: (NSString*) name;
//-(void) setProfilePicture: (GCObject*) pic;
-(void) setAge: (int) initAge;
-(void) setBirthday: (NSString*) bday;
-(void) setAddress: (NSString*) add;
-(void) setHometown: (NSString*) home;
-(void) setMiddleSchool: (NSString*) midSchool;
-(void) setHighSchool: (NSString*) hiSchool;
-(void) setCollege: (NSString*) col;
-(void) setWork: (NSString*) wrk;
-(void) setGender: (NSString*) gen;
-(void) setRelationship: (NSString*) relat;
-(void) setReligion: (NSString*) relig;
-(void) setPoliticalParty: (NSString*) politPar;

- (id) init;//: (NSDictionary*) user;

-(int) createAge: (NSString*) year;
-(NSString*) createBirthday: (NSString*) month: (NSString*) day;

@end
