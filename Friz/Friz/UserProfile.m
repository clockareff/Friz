//
//  UserProfile.m
//  FrizTest
//
//  Created by Colin Lockareff on 6/25/13.
//
//

#import "UserProfile.h"
#import "QuizQuestion.h"

@implementation UserProfile







-(id)init//: (User*) Jim
{
    if ((self = [super init]))
    {
//        //initialize your class here
//        questions = [[new NSMutableArray alloc] initWithCapacity:1];
//        
//        username = [Jim getUsername];
//        profilePicture = [Jim getProfilePicture];
//        age = [Jim getAge];
//        birthday = [Jim getBirthday];
//        address = [Jim getAddress];
//        hometown = [Jim getHometown];
//        middleSchool = [Jim getMiddleSchool];
//        highSchool = [Jim getHighSchool];
//        college = [Jim getCollege];
//        work = [Jim getWork];
//        workHistory = [Jim getWorkHistory];
//        gender = [Jim getGender];
//        relationship = [Jim getRelationship];
//        family = [Jim getFamily];
//        religion = [Jim getReligion];
//        politicalParty = [Jim getPoliticalParty];
        
        questions = [[NSMutableArray alloc] init];
        
        username = @"Colin Lockareff";
       // profilePicture = [Jim getProfilePicture];
        age = 18;
        birthday = @"October 27";
        address = @"349 Cervantes Rd, Portola Valley";
        hometown = @"Portola Valley";
        middleSchool = @"Corte Madera";
        highSchool = @"Sacred Heart Prep";
        college = @"University of Michigan";
        work = @"MakeGamesWithUs";
        //workHistory = [Jim getWorkHistory];
        gender = @"Male";
        //relationship = [Jim getRelationship];
        //family = [Jim getFamily];
        //religion = [Jim getReligion];
        //politicalParty = [Jim getPoliticalParty];
      
        
        
       // if (!birthday.equals(""))
       // {
        QuizQuestion *birthdayQuest = [[QuizQuestion alloc] init];
        [birthdayQuest setQuestion:@"When is my birthday?"];
        NSString *birthday0 = [self randomBirthday];
        [birthdayQuest setAnswer0:birthday0];
        NSString *birthday1 = [self randomBirthday];
        [birthdayQuest setAnswer1:birthday1];
        NSString *birthday2 = [self randomBirthday];
        [birthdayQuest setAnswer2:birthday2];
        [birthdayQuest setAnswer3:birthday];
        [questions addObject:birthdayQuest];
       // }
        
        //if (age != 0)
//        QuizQuestion *ageQuest = [[QuizQuestion alloc] init];
//        [ageQuest setQuestion:@"When is my birthday?"];
//        int age0 = [self randomAge:age];
//        NSString *a = [NSString stringWithFormat:@"%d", age0];
//        [ageQuest setAnswer0:a];
//        int age1 = [self randomAge:a];
//        age = [NSString stringWithFormat:@"%d", age1];
//        [ageQuest setAnswer1:a];
//        int age2 = [self randomAge:age];
//        age = [NSString stringWithFormat:@"%d", age2];
//        [ageQuest setAnswer2:a];
//        age = [NSString stringWithFormat:@"%d", age];
//        [ageQuest setAnswer3:a];
//        [questions addObject:ageQuest];
//        
        
        //obj = [[anotherClassIWillUseHere alloc] init]; //here we're initializing the object we declared in our header
    }
    
  //  [MGWU getMyInfoWithCallback:@selector(gotUserInfo:) onTarget:self];
    
    
    
    
    
    
    return self;
    
    
    
    
}

//-(void)addQuestion:(NSString*) questionIn: (NSString*) answer1In: (NSString*) answer2In: (NSString*) answer3In: (NSString*) answer4In
//{
//    NSObject *question = new QuizQuestion(questionIn, answer1In, answer2In, answer3In, answer4In);
//    [questions addObject: question];
//}

-(NSString*) randomBirthday
{
    NSString *randomBirthday;
    
    NSInteger randomMonth = random()*12;
    NSInteger randomDay = random()*30;
    int day = randomDay;
    if (randomMonth <1)
    {
        randomBirthday = [NSString stringWithFormat:@"January %d", day];
    }
    else if (randomMonth <2)
    {
        randomBirthday = [NSString stringWithFormat:@"February %d",day];
    }
    else if (randomMonth <3)
    {
        randomBirthday = [NSString stringWithFormat:@"March %d", day];
    }
    else if (randomMonth <4)
    {
        randomBirthday = [NSString stringWithFormat:@"April %d", day];
    }
    else if (randomMonth <5)
    {
        randomBirthday = [NSString stringWithFormat:@"May %d", day];
    }
    else if (randomMonth <6)
    {
        randomBirthday = [NSString stringWithFormat:@"June %d", day];
    }
    else if (randomMonth <7)
    {
        randomBirthday = [NSString stringWithFormat:@"July %d", day];
    }
    else if (randomMonth <8)
    {
        randomBirthday = [NSString stringWithFormat:@"August %d", day];
    }
    else if (randomMonth <9)
    {
        randomBirthday = [NSString stringWithFormat:@"September %d", day];
    }
    else if (randomMonth <10)
    {
        randomBirthday = [NSString stringWithFormat:@"October %d", day];
    }
    else if (randomMonth <11)
    {
        randomBirthday = [NSString stringWithFormat:@"November %d", day];
    }
    else
    {
        randomBirthday = [NSString stringWithFormat:@"December %d", day];
    }

    
    return randomBirthday;
    
}

-(int)randomAge:(int) age
{
    return (random()*10)-5 + age;
}



-(NSMutableArray*) getQuestions
{
    return questions;
}





//Store info from facebook.
//Name
//Profile Picture
//Friendlist
//All other public info
//Create an array of QuizQuestions from this info.
//If there is no info in a certain category, skip that question.


@end
