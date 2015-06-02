//
//  QuizQuestion.m
//  FrizTest
//
//  Created by Colin Lockareff on 6/24/13.
//
//

#import "QuizQuestion.h"
#import "User.h"
#import "Friend.h"
#import "AnswerArrays.h"


@implementation QuizQuestion


Friend *randomUser;
NSMutableArray *friends;
NSMutableArray *currentAnswers;
int question;
AnswerArrays *answers;


- (id)init: (User*) user : (int) num
{
    if ((self = [super init]))
    {
        answers = [[AnswerArrays alloc] init: user];
        currentAnswers = [[NSMutableArray alloc] init];
        friends = [user getFriends];
           //Person *randomUser = user;
           int randomIndex = arc4random() % [friends count];
            randomUser = [friends objectAtIndex: randomIndex];
        
        
        if (num == 0)
       {
           question = arc4random() % 5;
           NSNumber *questionNumber = [NSNumber numberWithInt:question+1];
           [self checkUserInfo: questionNumber];
           
        
        
        
        //Check the google API to see if I can find cities, schools, etc. close to other schools or cities. Or other Map API's that could perform this same service for cheap!
        
//        if (question < 1)
//        {
//            [self setQuestion: [NSString stringWithFormat:@"When is %@'s birthday?", randomUser.getUsername]];
//            [self setAnswer3: randomUser.getBirthday];
//            [currentAnswers addObject: randomUser.getBirthday];
//            
//            NSString *ans0 = [self uniqueAnswer: @"birthday"];
//            [self setAnswer0: ans0];
//            [currentAnswers addObject: ans0];
//            NSString *ans1 = [self uniqueAnswer: @"birthday"];
//            [self setAnswer1: ans1];
//            [currentAnswers addObject: ans1];
//            NSString *ans2 = [self uniqueAnswer: @"birthday"];
//            [self setAnswer2: ans2];
//            [currentAnswers addObject: ans2];
//
//        }
//        else if (question < 2)
//        {
//            [self setQuestion: [NSString stringWithFormat:@"How old is %@?", randomUser.getUsername]];
//            //[self setQuestion: @"How old is " + randomUser.getUsername + "?"];
//            [self setAnswer0: [self randomAge: randomUser.getAge]];
//            [self setAnswer1: [self randomAge: randomUser.getAge]];
//            [self setAnswer2: [self randomAge: randomUser.getAge]];
//            [self setAnswer3: [NSString stringWithFormat: @" %d", randomUser.getAge]];
//        }
        if (question < 1)
        {
            [self setQuestion: [NSString stringWithFormat:@"Where does %@ currently live?", randomUser.getUsername]];
            [self setAnswer3: randomUser.getAddress];
            [currentAnswers addObject: randomUser.getAddress];
            
            NSString *ans0 = [self uniqueAnswer: @"town"];
            [self setAnswer0: ans0];
            [currentAnswers addObject: ans0];
            NSString *ans1 = [self uniqueAnswer: @"town"];
            [self setAnswer1: ans1];
            [currentAnswers addObject: ans1];
            NSString *ans2 = [self uniqueAnswer: @"town"];
            [self setAnswer2: ans2];
            [currentAnswers addObject: ans2];
        }
        else if (question < 2)
        {
            [self setQuestion: [NSString stringWithFormat:@"Where is %@'s hometown?", randomUser.getUsername]];
            [self setAnswer3: randomUser.getHometown];
            [currentAnswers addObject: randomUser.getHometown];
            
            NSString *ans0 = [self uniqueAnswer: @"hometown"];
            [self setAnswer0: ans0];
            [currentAnswers addObject: ans0];
            NSString *ans1 = [self uniqueAnswer: @"hometown"];
            [self setAnswer1: ans1];
            [currentAnswers addObject: ans1];
            NSString *ans2 = [self uniqueAnswer: @"hometown"];
            [self setAnswer2: ans2];
            [currentAnswers addObject: ans2];
        }
//        else if (question < 4)
//        {
//            [self setQuestion: [NSString stringWithFormat:@"Where does/did %@ go to middle school?", randomUser.getUsername]];
//            //[self setQuestion: @"Where does/did " + randomUser.getUsername + " go to middle school?"];
//            [self setAnswer0: @"Woodside"];
//            [self setAnswer1: @"La Entrata"];
//            [self setAnswer2: @"St. Joes"];
//            [self setAnswer3: randomUser.getMiddleSchool];
//        }
        else if (question < 3)
        {
            [self setQuestion: [NSString stringWithFormat:@"Where does/did %@ go to high school?", randomUser.getUsername]];
            [self setAnswer3: randomUser.getHighSchool];
            [currentAnswers addObject: randomUser.getHighSchool];
            
            NSString *ans0 = [self uniqueAnswer: @"highSchool"];
            [self setAnswer0: ans0];
            [currentAnswers addObject: ans0];
            NSString *ans1 = [self uniqueAnswer: @"highSchool"];
            [self setAnswer1: ans1];
            [currentAnswers addObject: ans1];
            NSString *ans2 = [self uniqueAnswer: @"highSchool"];
            [self setAnswer2: ans2];
            [currentAnswers addObject: ans2];
        }
        else if (question < 4)
        {
            [self setQuestion: [NSString stringWithFormat:@"Where does/did %@ go to college?", randomUser.getUsername]];
            [self setAnswer3: randomUser.getCollege];
            [currentAnswers addObject: randomUser.getCollege];
            
            NSString *ans0 = [self uniqueAnswer: @"college"];
            [self setAnswer0: ans0];
            [currentAnswers addObject: ans0];
            NSString *ans1 = [self uniqueAnswer: @"college"];
            [self setAnswer1: ans1];
            [currentAnswers addObject: ans1];
            NSString *ans2 = [self uniqueAnswer: @"college"];
            [self setAnswer2: ans2];
            [currentAnswers addObject: ans2];
        }
        else
        {
            [self setQuestion: [NSString stringWithFormat:@"Where does %@ work?", randomUser.getUsername]];
            [self setAnswer3: randomUser.getWork];
            [currentAnswers addObject: randomUser.getWork];
            
            NSString *ans0 = [self uniqueAnswer: @"work"];
            [self setAnswer0: ans0];
            [currentAnswers addObject: ans0];
            NSString *ans1 = [self uniqueAnswer: @"work"];
            [self setAnswer1: ans1];
            [currentAnswers addObject: ans1];
            NSString *ans2 = [self uniqueAnswer: @"work"];
            [self setAnswer2: ans2];
            [currentAnswers addObject: ans2];
        }
//        else
//        {
//            [self setQuestion: [NSString stringWithFormat:@"What is %@'s gender?", randomUser.getUsername]];
//            //[self setQuestion: @"What is " + randomUser.getUsername + "'s gender?"];
//            [self setAnswer0: @"Male"];
//            [self setAnswer1: @"Female"];
//            [self setAnswer2: @"Transgender"];
//            [self setAnswer3: randomUser.getGender];
//        }
       }
        
//        else if(num == 1)
//        {
//            [self checkUserInfo: @0];
//
//            
//            [self setQuestion: [NSString stringWithFormat:@"When is %@'s birthday?", randomUser.getUsername]];
//            [self setAnswer3: randomUser.getBirthday];
//            [currentAnswers addObject: randomUser.getBirthday];
//            
//            NSString *ans0 = [self uniqueAnswer: @"birthday"];
//            [self setAnswer0: ans0];
//            [currentAnswers addObject: ans0];
//            NSString *ans1 = [self uniqueAnswer: @"birthday"];
//            [self setAnswer1: ans1];
//            [currentAnswers addObject: ans1];
//            NSString *ans2 = [self uniqueAnswer: @"birthday"];
//            [self setAnswer2: ans2];
//            [currentAnswers addObject: ans2];
//        }
        
        else if(num ==2)
        {
            [self checkUserInfo: @1];

            [self setQuestion: [NSString stringWithFormat:@"Where does %@ currently live?", randomUser.getUsername]];
            [self setAnswer3: randomUser.getAddress];
            [currentAnswers addObject: randomUser.getAddress];
            
            NSString *ans0 = [self uniqueAnswer: @"town"];
            [self setAnswer0: ans0];
            [currentAnswers addObject: ans0];
            NSString *ans1 = [self uniqueAnswer: @"town"];
            [self setAnswer1: ans1];
            [currentAnswers addObject: ans1];
            NSString *ans2 = [self uniqueAnswer: @"town"];
            [self setAnswer2: ans2];
            [currentAnswers addObject: ans2];
            
            
        }
        else if(num ==3)
        {
            [self checkUserInfo: @2];

            [self setQuestion: [NSString stringWithFormat:@"Where is %@'s hometown?", randomUser.getUsername]];
            [self setAnswer3: randomUser.getHometown];
            [currentAnswers addObject: randomUser.getHometown];
            
            NSString *ans0 = [self uniqueAnswer: @"hometown"];
            [self setAnswer0: ans0];
            [currentAnswers addObject: ans0];
            NSString *ans1 = [self uniqueAnswer: @"hometown"];
            [self setAnswer1: ans1];
            [currentAnswers addObject: ans1];
            NSString *ans2 = [self uniqueAnswer: @"hometown"];
            [self setAnswer2: ans2];
            [currentAnswers addObject: ans2];
            
            
        }
        else if(num ==4)
        {
            [self checkUserInfo: @3];
            
            [self setQuestion: [NSString stringWithFormat:@"Where does/did %@ go to high school?", randomUser.getUsername]];
            [self setAnswer3: randomUser.getHighSchool];
            [currentAnswers addObject: randomUser.getHighSchool];
            
            NSString *ans0 = [self uniqueAnswer: @"highSchool"];
            [self setAnswer0: ans0];
            [currentAnswers addObject: ans0];
            NSString *ans1 = [self uniqueAnswer: @"highSchool"];
            [self setAnswer1: ans1];
            [currentAnswers addObject: ans1];
            NSString *ans2 = [self uniqueAnswer: @"highSchool"];
            [self setAnswer2: ans2];
            [currentAnswers addObject: ans2];
            
            
        }
        else if(num ==5)
        {
            [self checkUserInfo: @4];
            
            [self setQuestion: [NSString stringWithFormat:@"Where does/did %@ go to college?", randomUser.getUsername]];
            [self setAnswer3: randomUser.getCollege];
            [currentAnswers addObject: randomUser.getCollege];
            
            NSString *ans0 = [self uniqueAnswer: @"college"];
            [self setAnswer0: ans0];
            [currentAnswers addObject: ans0];
            NSString *ans1 = [self uniqueAnswer: @"college"];
            [self setAnswer1: ans1];
            [currentAnswers addObject: ans1];
            NSString *ans2 = [self uniqueAnswer: @"college"];
            [self setAnswer2: ans2];
            [currentAnswers addObject: ans2];
            
            
        }
        
        else if(num ==6)
        {
            [self checkUserInfo: @5];
            
            [self setQuestion: [NSString stringWithFormat:@"Where does %@ work?", randomUser.getUsername]];
            [self setAnswer3: randomUser.getWork];
            [currentAnswers addObject: randomUser.getWork];
            
            NSString *ans0 = [self uniqueAnswer: @"work"];
            [self setAnswer0: ans0];
            [currentAnswers addObject: ans0];
            NSString *ans1 = [self uniqueAnswer: @"work"];
            [self setAnswer1: ans1];
            [currentAnswers addObject: ans1];
            NSString *ans2 = [self uniqueAnswer: @"work"];
            [self setAnswer2: ans2];
            [currentAnswers addObject: ans2];
        }
        
        
    }
    return self;
}


            
-(void)setQuestion: (NSString*) question
{Question = question;}

-(void)setAnswer0: (NSString*) answer0
{
    Answer0 = answer0;
}

-(void)setAnswer1: (NSString*) answer1
{Answer1 = answer1;}

-(void)setAnswer2: (NSString*) answer2
{Answer2 = answer2;}

-(void)setAnswer3: (NSString*) answer3
{Answer3 = answer3;}



-(NSString*)getQuestion{return Question;}
-(NSString*)getWrongAnswer0{
    return Answer0;
}
-(NSString*)getWrongAnswer1{return Answer1;}
-(NSString*)getWrongAnswer2{return Answer2;}
-(NSString*)getRightAnswer{return Answer3;}

-(NSString*) randomBirthday
{
    NSString *randomBirthday;
    
    int randomMonth = arc4random() % 12;
    int randomDay = arc4random() % 29 +1;
    NSString *dayString;
    if (randomDay <10)
    {
        dayString = [NSString stringWithFormat:@"0%d",randomDay];
    }
    else
    {
       dayString = [NSString stringWithFormat:@"%d",randomDay];
    }
    if (randomMonth <1)
    {
        randomBirthday = [NSString stringWithFormat:@"January %@", dayString];
    }
    else if (randomMonth <2)
    {
        randomBirthday = [NSString stringWithFormat:@"February %@", dayString];
    }
    else if (randomMonth <3)
    {
        randomBirthday = [NSString stringWithFormat:@"March %@", dayString];
    }
    else if (randomMonth <4)
    {
        randomBirthday = [NSString stringWithFormat:@"April %@", dayString];
    }
    else if (randomMonth <5)
    {
        randomBirthday = [NSString stringWithFormat:@"May %@", dayString];
    }
    else if (randomMonth <6)
    {
        randomBirthday = [NSString stringWithFormat:@"June %@", dayString];
    }
    else if (randomMonth <7)
    {
        randomBirthday = [NSString stringWithFormat:@"July %@", dayString];
    }
    else if (randomMonth <8)
    {
        randomBirthday = [NSString stringWithFormat:@"August %@", dayString];
    }
    else if (randomMonth <9)
    {
        randomBirthday = [NSString stringWithFormat:@"September %@", dayString];
    }
    else if (randomMonth <10)
    {
        randomBirthday = [NSString stringWithFormat:@"October %@", dayString];
    }
    else if (randomMonth <11)
    {
        randomBirthday = [NSString stringWithFormat:@"November %@", dayString];
    }
    else
    {
        randomBirthday = [NSString stringWithFormat:@"December %@", dayString];
    }
    
    
    return randomBirthday;
    
}

-(NSString*)randomAge:(int) age
{
    int randAge = (arc4random() % 10) -5 + age;
    while (randAge == age)
    {
        randAge = (arc4random() % 10) -5 + age;
    }
    return [NSString stringWithFormat:@" %d", randAge];
}




-(BOOL) isCorrect: (NSString*) answer
{
    return ([answer isEqualToString:Answer3]);
}

-(void) checkUserInfo: (NSNumber*) num
{
    if ([num isEqual: @0])
    {
        if ([[randomUser getBirthday]  length] == 0)
        {
            int randomIndex = arc4random() % [friends count];
            randomUser = [friends objectAtIndex: randomIndex];
            [self checkUserInfo: num];
        }
    }
//    if([num isEqual: @1])
//    {
//        //        NSString *userAge = [NSString stringWithFormat: @"%d", randomUser.getAge];
//        //        if ([userAge isEqualToString: @""]);
//        if ([randomUser getAge] == 0)
//        {
//            int randomIndex = arc4random() % [friends count];
//            randomUser = [friends objectAtIndex: randomIndex];
//            [self checkUserInfo: num];
//        }
//    }
    if([num isEqual: @1])
    {
        if ([[randomUser getAddress]  length] == 0)
        {
            int randomIndex = arc4random() % [friends count];
            randomUser = [friends objectAtIndex: randomIndex];
            [self checkUserInfo: num];
        }
    }
    if([num isEqual: @2])
    {
        if ([[randomUser getHometown]  length] == 0)
        {
            int randomIndex = arc4random() % [friends count];
            randomUser = [friends objectAtIndex: randomIndex];
            [self checkUserInfo: num];
        }
    }
//    if([num isEqual: @3])
//    {
//        if ([[randomUser getMiddleSchool]  length] == 0)
//        {
//            int randomIndex = arc4random() % [friends count];
//            randomUser = [friends objectAtIndex: randomIndex];
//            [self checkUserInfo: num];
//        }
//    }
    if([num isEqual: @3])
    {
        if ([[randomUser getHighSchool]  length] == 0)
        {
            int randomIndex = arc4random() % [friends count];
            randomUser = [friends objectAtIndex: randomIndex];
            [self checkUserInfo: num];
        }
    }
    if([num isEqual: @4])
    {
        if ([[randomUser getCollege]  length] == 0)
        {
            int randomIndex = arc4random() % [friends count];
            randomUser = [friends objectAtIndex: randomIndex];
            [self checkUserInfo: num];
        }
    }
    if([num isEqual: @5])
    {
        if ([[randomUser getWork]  length] == 0)
        {
            int randomIndex = arc4random() % [friends count];
            randomUser = [friends objectAtIndex: randomIndex];
            [self checkUserInfo: num];
        }
    }
//    if([num isEqual: @6])
//    {
//        if ([[randomUser getGender] length] == 0)
//        {
//            int randomIndex = arc4random() % [friends count];
//            randomUser = [friends objectAtIndex: randomIndex];
//            [self checkUserInfo: num];
//        }
//    }
    
}

-(NSString*) uniqueAnswer: (NSString*) category
{
    NSString *answerOption;
    if ([category isEqual: @"birthday"])
    {
        answerOption = [self randomBirthday];
    }
    else if ([category isEqual: @"town"])
    {
        answerOption = [answers randomCity];
    }
    else if ([category isEqual: @"hometown"])
    {
        answerOption = [answers randomHometown];
    }
    else if ([category isEqual: @"highSchool"])
    {
        answerOption = [answers randomHighSchool];
    }
    else if ([category isEqual: @"college"])
    {
        answerOption = [answers randomCollege];
    }
    else
    {
        answerOption = [answers randomWork];
    }

    for (int i=0; i<[currentAnswers count]; i++)
    {
        if ([answerOption isEqual: [currentAnswers objectAtIndex: i]])
        {
            answerOption = [self uniqueAnswer: [NSString stringWithFormat:@"%@",category]];
        }
    }

    return answerOption;


}


@end
