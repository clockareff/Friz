//
//  QuizLayer.m
//  FrizTest
//
//  Created by Colin Lockareff on 6/24/13.
//
//

#import "QuizLayer.h"
#import "QuizQuestion.h"
#import "UserProfile.h"
#import "User.h"
#import "StartLayer.h"
#import "Friend.h"
#import "Transition.h"
#import "GameSummary.h"
#include <stdlib.h> //to clear the screen

@implementation QuizLayer

User *player;
bool firstChance;
int quizType;

int static numRight = 0;
int static numWrong = 0;
int static quizScore = 0;
int static questionNumber = 0;
int static scoreMultiplier = 1;
int static myTime = 60; //this is your incremented time.
ccTime static totalTime = 60;
bool static gameOver = false;
int gameType;
int questionScore;
CCLabelTTF *questScoreLabel;
CCLabelTTF *scoreMultiplierLabel;
CCLabelTTF *quizScoreLabel;


- (id)init:(User*) gameUser: (int) num //answer4 is the correct one
{
    if ((self = [super init]))
    {
        CCSprite * background;
        background = [CCSprite spriteWithFile:@"Gbackground.jpg"];
        background.position = CGPointMake(160, 240);
        [self addChild:background];
        
        

        quizScoreLabel = [CCLabelTTF labelWithString:[NSString stringWithFormat:@"%i",quizScore] fontName:@"Montserrat-Regular" fontSize:20];
        quizScoreLabel.position = CGPointMake(45, 455);
        [self addChild:quizScoreLabel];
        quizScoreLabel.color = ccBLACK;
        
        questionScore = 1000;
        gameType = num;
        
        timeLabel = [CCLabelTTF labelWithString:[NSString stringWithFormat:@":%i",myTime] fontName:@"Montserrat-Regular" fontSize:20];
        timeLabel.position = CGPointMake(275, 455);
        [self addChild:timeLabel];

        
        questScoreLabel = [CCLabelTTF labelWithString:[NSString stringWithFormat:@":%i",questionScore] fontName:@"Montserrat-Regular" fontSize:20];
        questScoreLabel.position = CGPointMake(125, 455);
        [self addChild:questScoreLabel];
        questScoreLabel.color = ccBLACK;
        
        scoreMultiplierLabel = [CCLabelTTF labelWithString:[NSString stringWithFormat:@":%i",scoreMultiplier] fontName:@"Montserrat-Regular" fontSize:20];
        scoreMultiplierLabel.position = CGPointMake(195, 455);
        [self addChild:scoreMultiplierLabel];
        scoreMultiplierLabel.color = ccBLACK;

        
        
       [self schedule:@selector(update:)];
        
        
        
        quizType = num;
        firstChance = true;
        player = gameUser;
        for (int i=0; i<1; i++)
        {
            QuizQuestion *q = [[QuizQuestion alloc] init: player: num];
            Question = [q getQuestion];
            Answer0 = [q getWrongAnswer0];
            Answer1 = [q getWrongAnswer1];
            Answer2 = [q getWrongAnswer2];
            Answer3 = [q getRightAnswer];
            [self setUpQuestions];
            //wait for the first question to be answered before moving on to the next question.
        }
        
        
////        for (int i=0; i< (int)[questions count]; i++)
////        {
//            QuizQuestion *q = [questions objectAtIndex:0];
//            Question = [q getQuestion];
//            Answer0 = [q getWrongAnswer0];
//            Answer1 = [q getWrongAnswer1];
//            Answer2 = [q getWrongAnswer2];
//            Answer3 = [q getRightAnswer];
////            
////            //            NSLog(@"%@", [q getRightAnswer]);
////        }
//        [self setUpQuestions];
        
        
    }
    return self;
}

-(void) switchGameOver: (bool) boo
{
    {
        gameOver = boo;
    }
}

- (void)setUpQuestions
{
    CGSize screenSize = [[CCDirector sharedDirector] winSize];
    CGFloat screenWidth = screenSize.width;
    CGFloat screenHeight = screenSize.height;
    
    //    // Create Background
    //    CCSprite *background = [CCSprite spriteWithFile:@"quiz_background.png"];
    //
    //    background.position = ccp(screenWidth/2, screenHeight/2);
    //    [self addChild: background];
    
    
    
    
    questLabel = [CCLabelTTF labelWithString:[NSString stringWithFormat:@"%@",Question] dimensions:CGSizeMake(250,200) alignment:kCCTextAlignmentCenter fontName:@"Montserrat-Regular" fontSize:25 ];
    
    [self addChild: questLabel];
    //questLabel.position = ccp (screenWidth / 2, screenHeight*5 / 6);
    questLabel.position = ccp(160,300);

    questLabel.color = ccBLACK;



    NSMutableArray *order =[[NSMutableArray alloc] init];
    for (int i=0; i<4; i++)
        [order addObject:[NSNumber numberWithInt: (i)]];
    //Randomize Array
    for (NSUInteger x = 0; x < [order count]; x++)
    {
        NSInteger randInt = (random() % ([order count] - x)) + x;
        [order exchangeObjectAtIndex:x withObjectAtIndex:randInt];
    }
    
    
    // NSString *answerText = [NSString stringWithFormat:@"answer"];
    //        NSNumber *ansNumber3 = [order objectAtIndex:3];
    //        n = [ansNumber3 intValue];
    //        NSString *ans3 = [NSString stringWithFormat:@"%@%d", answerText,n];
    
    
    //        NSNumber *ansNumber0 = [order objectAtIndex:0];
    //        int n = [ansNumber0 intValue];
    //        NSString *ans0 = [NSString stringWithFormat:@"%@%d", Answer0,n];
//    label0 = [CCLabelTTF labelWithString:[NSString stringWithFormat:@"%@", Answer0]
//                              dimensions:CGSizeMake(160., 45.)
//                               alignment:UITextAlignmentCenter
//                                fontName:@"Marker Felt" fontSize:16.];
    
    NSString *firstAnswer = [self randomAnswer: [order objectAtIndex:0]];
    
    
    
    
    

    
    
//    CCMenuItemImage* icon = [CCMenuItemImage itemFromNormalImage:img selectedImage:img target:self selector:select];
//    CCLabel* iconLabel = [CCLabel labelWithString:lbl dimensions:CGSizeMake(120,40) alignment:UITextAlignmentCenter fontName:@"Existence-Light" fontSize:32];
//    iconLabel.color = ccc3(255,255,255);
//    iconLabel.position = ccp(60,30);
//    iconLabel.tag = 1;
//    [icon addChild:iconLabel];
    


    CCMenuItemImage *button1;
    if ([firstAnswer isEqualToString:Answer3])
    {
        button1 = [CCMenuItemImage itemWithNormalImage:@"gamescreen_btn1.jpg"
                                                          selectedImage: @"gamescreen_btn1_pressed.jpg"
                                                                 target:self
                                                               selector:@selector(rightAnswer)];
        button1.position = ccp(0,-30);
        
//        menu0 = [CCMenuItemLabel itemWithLabel:label0 target:self selector:@selector(rightAnswer)];
//        correctAnswer = label0;
    }
    else
    {
        button1 = [CCMenuItemImage itemWithNormalImage:@"gamescreen_btn1.jpg"
                                                          selectedImage: @"gamescreen_btn1_pressed.jpg"
                                                                 target:self
                                                               selector:@selector(wrongAnswer:)];
        button1.position = ccp(0,-30);
//        menu0 = [CCMenuItemLabel itemWithLabel:label0 target:self selector:@selector(wrongAnswer:)];
    }
//    menu0.position = ccp(0,10);

        label0 = [CCLabelTTF labelWithString: firstAnswer dimensions:CGSizeMake(250,40) alignment:UITextAlignmentCenter fontName:@"Montserrat-Regular" fontSize:16];
    label0.position = ccp(160,220);
    label0.color = ccBLACK;
        [self addChild: label0];

    
    
    //        NSNumber *ansNumber1 = [order objectAtIndex:1];
    //        n = [ansNumber1 intValue];
    //        NSString *ans1 = [NSString stringWithFormat:@"%@%d", Answer1,n];
//    label1 = [CCLabelTTF labelWithString:Answer1
//                              dimensions:CGSizeMake(160., 45.)
//                               alignment:UITextAlignmentCenter
//                                fontName:@"Marker Felt" fontSize:16.];
    
    
    
    NSString *secondAnswer = [self randomAnswer: [order objectAtIndex:1]];

    
    
    
    
    CCMenuItemImage *button2;
    if ([secondAnswer isEqualToString:Answer3])
    {
        button2 = [CCMenuItemImage itemWithNormalImage:@"gamescreen_btn2.jpg"
                                                          selectedImage: @"gamescreen_btn2_pressed.jpg"
                                                                 target:self
                                                               selector:@selector(rightAnswer)];
        button2.position = ccp(0,-90);
        
//        menu1 = [CCMenuItemLabel itemWithLabel:label1 target:self selector:@selector(rightAnswer)];
//        correctAnswer = label1;
    }
    else
    {
        button2 = [CCMenuItemImage itemWithNormalImage:@"gamescreen_btn2.jpg"
                                                          selectedImage: @"gamescreen_btn2_pressed.jpg"
                                                                 target:self
                                                               selector:@selector(wrongAnswer:)];
        button2.position = ccp(0,-90);
        
//        menu1 = [CCMenuItemLabel itemWithLabel:label1 target:self selector:@selector(wrongAnswer:)];
    }
//    menu1.position = ccp(0,-20);

        label1 = [CCLabelTTF labelWithString: secondAnswer dimensions:CGSizeMake(250,40) alignment:UITextAlignmentCenter fontName:@"Montserrat-Regular" fontSize:16];
    label1.position = ccp(160,-120);
    label1.color = ccWHITE;
    [button2 addChild: label1];

    //        NSNumber *ansNumber2 = [order objectAtIndex:2];
    //        n = [ansNumber2 intValue];
    //        NSString *ans2 = [NSString stringWithFormat:@"%@%d", Answer2,n];
//    label2 = [CCLabelTTF labelWithString:Answer2
//                              dimensions:CGSizeMake(160., 45.)
//                               alignment:UITextAlignmentCenter
//                                fontName:@"Marker Felt" fontSize:16.];
    
    NSString *thirdAnswer = [self randomAnswer: [order objectAtIndex:2]];
    
    
    CCMenuItemImage *button3;
    if ([thirdAnswer isEqualToString:Answer3])
    {
        button3 = [CCMenuItemImage itemWithNormalImage:@"gamescreen_btn3.jpg"
                                                          selectedImage: @"gamescreen_btn3_pressed.jpg"
                                                                 target:self
                                                               selector:@selector(rightAnswer)];
        button3.position = ccp(0,-150);
        
//        menu2 = [CCMenuItemLabel itemWithLabel:label2 target:self selector:@selector(rightAnswer)];
//        correctAnswer = label2;
    }
    else
    {
        button3 = [CCMenuItemImage itemWithNormalImage:@"gamescreen_btn3.jpg"
                                                          selectedImage: @"gamescreen_btn3_pressed.jpg"
                                                                 target:self
                                                               selector:@selector(wrongAnswer:)];
        button3.position = ccp(0,-150);
        
//    menu2 = [CCMenuItemLabel itemWithLabel:label2 target:self selector:@selector(wrongAnswer:)];
    }
//    menu2.position = ccp(0,-50);

    label2 = [CCLabelTTF labelWithString: thirdAnswer dimensions:CGSizeMake(250,40) alignment:UITextAlignmentCenter fontName:@"Montserrat-Regular" fontSize:16];
    label2.position = ccp(160,-180);
    label2.color = ccWHITE;
    [button3 addChild: label2];

    //        NSNumber *ansNumber3 = [order objectAtIndex:3];
    //        n = [ansNumber3 intValue];
    //        NSString *ans3 = [NSString stringWithFormat:@"%@%d", Answer3,n];
//    label3 = [CCLabelTTF labelWithString:Answer3
//                              dimensions:CGSizeMake(160., 45.)
//                               alignment:UITextAlignmentCenter
//                                fontName:@"Marker Felt" fontSize:16.];
    
    NSString *fourthAnswer = [self randomAnswer: [order objectAtIndex:3]];
    
    
    CCMenuItemImage *button4;
    if ([fourthAnswer isEqualToString:Answer3])
    {
        button4 = [CCMenuItemImage itemWithNormalImage:@"gamescreen_btn4.jpg"
                                                          selectedImage: @"gamescreen_btn4_pressed.jpg"
                                                                 target:self
                                                               selector:@selector(rightAnswer)];
        button4.position = ccp(0,-210);
        
//        menu3 = [CCMenuItemLabel itemWithLabel:label3 target:self selector:@selector(rightAnswer)];
//        correctAnswer = label3;
    }
    else
    {
        button4 = [CCMenuItemImage itemWithNormalImage:@"gamescreen_btn4.jpg"
                                                          selectedImage: @"gamescreen_btn4_pressed.jpg"
                                                                 target:self
                                                               selector:@selector(wrongAnswer:)];
        button4.position = ccp(0,-210);
        
//        menu3 = [CCMenuItemLabel itemWithLabel:label3 target:self selector:@selector(wrongAnswer:)];
    }
//    menu3.position = ccp(0,-80);

    label3 = [CCLabelTTF labelWithString: fourthAnswer dimensions:CGSizeMake(250,40) alignment:UITextAlignmentCenter fontName:@"Montserrat-Regular" fontSize:16];
    label3.position = ccp(160,-240);
    label3.color = ccWHITE;
    [button4 addChild: label3];

    //Create a menu with the menu items you've created
    CCMenu *myMenu = [CCMenu menuWithItems: button1, button2, button3, button4, nil];
    
    [self addChild: myMenu];
}

-(NSString*) randomAnswer: (NSNumber*) index
{
    if (index == [NSNumber numberWithInt: (0)])
    {
        return Answer0;
    }
    else if (index == [NSNumber numberWithInt: (1)])
    {
            return Answer1;
    }
    else if (index == [NSNumber numberWithInt: (2)])
    {
        return Answer2;
    }
    else
    {
        return Answer3;
    }
}

-(BOOL) wrongAnswer: (CCLabelTTF*) labelNumber

{
    
    if (!gameOver)
    {
        questionNumber++;
        numWrong++;
        quizScore -= questionScore/4;
        scoreMultiplier = 1;
        [self removeAllChildren];
        [self newQuestion: @"Wrong"];
    }
    
    //[NSThread sleepForTimeInterval:1.0f];
    
//    if (questionNumber < 10)
//    {
//        questionNumber++;
//        
//        [[CCDirector sharedDirector] replaceScene:[CCTransitionMoveInT transitionWithDuration:1.0f scene:(CCScene*)[[QuizLayer alloc] init: player]]];
//    }
//    else
//    {
//        glClearColor(0.5f, 0.3f, 0.1f, 1.0f);
//    }
    
    
    //    //make the parameter label red
    //    labelNumber.color = ccc3(255,0,0);
    //    //make the correctAnswerLocation label green
    //    correctAnswer.color = cc3(0,0,255);
    
    
    
    //do whatever needs to be done with the score
    
    // Wait for tap then go on to the next question
    //psst! you can create a wrapper around your init method to pass in parameters
    return false;
}

-(BOOL) rightAnswer
{
    
    
    
    
    if (!gameOver)
    {
        questionNumber++;
        numRight++;
        quizScore += questionScore*scoreMultiplier;
        scoreMultiplier++;

        [self newQuestion: @"Right"];
    }
    
        
        
    
    
    
    
    //increase score
    //Wait for tap then on to the next question
    return true;
    
}

-(void)newQuestion: (NSString*) director
{
    [[CCDirector sharedDirector] replaceScene:(CCScene*)[[Transition alloc] init: director: gameType : player : myTime:  numRight: numWrong: quizScore]];
    
}

-(void)update:(ccTime)dt
{
    if (gameOver == false)
    {
        
        questionScore--;
        [questScoreLabel setString: [NSString stringWithFormat:@"%i", questionScore]];
        [scoreMultiplierLabel setString: [NSString stringWithFormat:@"x%i", scoreMultiplier]];
        totalTime -= dt;
        currentTime = (int)totalTime;
        if (myTime > currentTime)
        {
            myTime = currentTime;
            [timeLabel setString:[NSString stringWithFormat:@":%i", myTime]];
        }
        
        if (myTime <= 0)
        {
            int numRi = numRight;
            int numWr = numWrong;
            questionNumber = 0;
            gameOver = true;
            totalTime = 60;
            myTime = 60;
            numRight = 0;
            numWrong = 0;
            scoreMultiplier = 1;
            [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0f scene:(CCScene*)[[GameSummary alloc] init: player: numRi: numWr: quizScore: gameType]]];
        }
    }
}

- (void) resetGame
{
    questionNumber = 0;
    quizScore = 0;
    gameOver = true;
    totalTime = 60;
    myTime = 60;
    numRight = 0;
    numWrong = 0;
    scoreMultiplier = 1;
    
}

@end

