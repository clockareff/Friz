//
//  QuizQuestion.h
//  FrizTest
//
//  Created by Colin Lockareff on 6/24/13.
//
//

#import "User.h"

#import "cocos2d.h"
#import <Foundation/Foundation.h>
#import "Friend.h"

@interface QuizQuestion : NSObject
{
    NSString *Question;
    NSString *Answer0;
    NSString *Answer1;
    NSString *Answer2;
    NSString *Answer3;
    NSString *correctAnswer;
}
-(NSString*)getQuestion;
-(NSString*)getWrongAnswer0;
-(NSString*)getWrongAnswer1;
-(NSString*)getWrongAnswer2;
-(NSString*)getRightAnswer;

-(void) setUser: (User*) user;
-(void)setQuestion: (NSString*) question;
-(void)setAnswer0: (NSString*) answer0;
-(void)setAnswer1: (NSString*) answer1;
-(void)setAnswer2: (NSString*) answer2;
-(void)setAnswer3: (NSString*) answer3;

-(NSString*) randomBirthday;
-(NSString*)randomAge:(int) age;

-(BOOL) isCorrect: (NSString*) answer;
-(id) init: (User*) user : (int) num;
@end
