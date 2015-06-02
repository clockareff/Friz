//
//  Transition.m
//  FrizTest
//
//  Created by Colin Lockareff on 7/25/13.
//
//

#import "Transition.h"
#import "QuizLayer.h"
#import "User.h"
#import "GameSummary.h"

float localTime;
User *user;
int numRi;
int numWr;
int timeLeft;
int game;
bool ticker;
int quizScore;

@implementation Transition

- (id)init:(NSString*) outcome: (int) gameType: (User*) person: (int) time: (int) numRight: (int) numWrong: (int) score
{
    if ((self = [super init]))
    {
        quizScore = score;
        ticker = false;
        localTime = 20;
        user = person;
        numRi = numRight;
        numWr = numWrong;
        timeLeft = time;
        game = gameType;
        CCSprite * background;
        

        [self schedule:@selector(update:)];

        
        if ( [outcome isEqual: @"Right"])
        {
            background = [CCSprite spriteWithFile:@"right_background.jpg"];
            background.position = CGPointMake(160, 240);

//            background.scaleX = .5;
//            background.scaleY = .5;
        }
        else
        {
            background = [CCSprite spriteWithFile:@"wrong_background.jpg"];
            background.position = CGPointMake(160, 240);

//            background.scaleX = .5;
//            background.scaleY = .5;
        }
        
        [self addChild:background];
    
        [self scheduleUpdate];
        
    }
    return self;
}

//- (void)drawRect:(CGRect)rect: (int) color
//{
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetRGBStrokeColor(context, 1.0, 1.0, 0.0, 1.0); // yellow line
//    
//    CGContextBeginPath(context);
//    
//    CGContextMoveToPoint(context, 0.0, 0.0); //start point
//    CGContextAddLineToPoint(context, 0.0, 700.0);
//    CGContextAddLineToPoint(context, 500.0, 700.0);
//    CGContextAddLineToPoint(context, 500.0, 0.0); // end path
//    
//    CGContextClosePath(context); // close path
//    
//    CGContextSetLineWidth(context, 8.0); // this is set from now on until you explicitly change it
//    
//    CGContextStrokePath(context); // do actual stroking
//    
//    if (color == 1)
//    {
//        CGContextSetRGBFillColor(context, 0.0, 1.0, 0.0, 1.0);
//    }
//    else
//    {
//        CGContextSetRGBFillColor(context, 1.0, 0.0, 0.0, 1.0);
//    }
//    
//    
//    
//    CGContextFillRect(context, CGRectMake(0, 0, 500.0, 700.0)); // a square at the bottom left-hand corner
//}
//
-(void)update:(ccTime)dt
{
   while (ticker == false)
   {
    if (timeLeft > 3)
    {
    
        
        localTime -= dt;
        if (localTime < 0)
        {
            ticker = true;
            [self newQuestion];
            
        }
        else{}
        
    }
    else
    {
        QuizLayer *shmee = [[QuizLayer alloc] init: user: game];
        [shmee resetGame];
        ticker = true;
        [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:0.5f scene:(CCScene*)[[GameSummary alloc] init: user: numRi: numWr: quizScore: game]]];
    }
   }
}

-(void)newQuestion
{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:0.5f scene:(CCScene*)[[QuizLayer alloc] init: user: game]]];
    
}



@end
