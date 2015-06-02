//
//  QuizLayer.h
//  FrizTest
//
//  Created by Colin Lockareff on 6/24/13.
//
//

#import "CCLayer.h"
#import "User.h"
#import "Friend.h"

@interface QuizLayer : CCLayer
{
    
        
    CCLabelTTF *timeLabel;
    int currentTime;
    
    
    
    NSString *Question;
    NSString *Answer0;
    NSString *Answer1;
    NSString *Answer2;
    NSString *Answer3;
    
    
    CCLabelTTF *questLabel;
    CCLabelTTF *label0;
    CCLabelTTF *label1;
    CCLabelTTF *label2;
    CCLabelTTF *label3;
    CCLabelTTF *correctAnswer;
}

-(void) switchGameOver: (bool) boo;
- (id)init:(User*) gameUser: (int) num;
-(NSString*) randomAnswer: (int) num;
-(BOOL) wrongAnswer: (CCMenuItem*) labelNumber;
-(BOOL) rightAnswer;
- (void) resetGame;

@end
