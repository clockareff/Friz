//
//  GamesLayer.m
//  FrizTest
//
//  Created by Colin Lockareff on 7/17/13.
//
//

#import "GamesLayer.h"
#import "QuizLayer.h"
#import "Friend.h"
#import "User.h"
#import "StartLayer.h"

CCMenu *myMenu;
User *player;

@implementation GamesLayer

-(id) init: (User*) user
{
    if ((self = [super init]))
	{
        player = user;
        //player = user;
//        CCLabelTTF *birthdays = [CCLabelTTF labelWithString: @"Birthdays" dimensions:CGSizeMake(200,50) alignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:40 ];
//        
//        CCMenuItem *birthdayGame = [CCMenuItemLabel itemWithLabel: birthdays target:self selector:@selector(playBirthdayGame)];
//        birthdayGame.position = ccp(0,187.5);
        
        /////////
        
        CCSprite * background;
        background = [CCSprite spriteWithFile:@"GTbackground.jpg"];
        background.position = CGPointMake(160, 240);
        [self addChild:background];
  //        background.scaleX = .5;
//        background.scaleY = .5;      
        
        CCMenuItemImage *currentTown = [CCMenuItemImage itemWithNormalImage:@"gametype_btn1.png"
                                                           selectedImage: @"gametype_btn1_pressed.png"
                                                                  target:self
                                                                selector:@selector(playCurrentTownGame)];
        currentTown.position = ccp(0,150);
//        currentTown.scaleX = .5;
//        currentTown.scaleY = .5;
        
        CCMenuItemImage *hometown = [CCMenuItemImage itemWithNormalImage:@"gametype_btn2.png"
                                                              selectedImage: @"gametype_btn2_pressed.png"
                                                                     target:self
                                                                   selector:@selector(playHometownGame)];
        hometown.position = ccp(0,85);
//        hometown.scaleX = .5;
//        hometown.scaleY = .5;
        
        CCMenuItemImage *highschool = [CCMenuItemImage itemWithNormalImage:@"gametype_btn3.png"
                                                              selectedImage: @"gametype_btn3_pressed.png"
                                                                     target:self
                                                                   selector:@selector(playHighSchoolGame)];
        highschool.position = ccp(0,20);
//        highschool.scaleX = .5;
//        highschool.scaleY = .5;
        
        CCMenuItemImage *college = [CCMenuItemImage itemWithNormalImage:@"gametype_btn4.png"
                                                              selectedImage: @"gametype_btn4_pressed.png"
                                                                     target:self
                                                                   selector:@selector(playCollegeGame)];
        college.position = ccp(0,-45);
//        college.scaleX = .5;
//        college.scaleY = .5;
        
        CCMenuItemImage *work = [CCMenuItemImage itemWithNormalImage:@"gametype_btn5.png"
                                                              selectedImage: @"gametype_btn5_pressed.png"
                                                                     target:self
                                                                   selector:@selector(playWorkGame)];
        work.position = ccp(0,-110);
//        work.scaleX = .5;
//        work.scaleY = .5;
        
        CCMenuItemImage *backButton = [CCMenuItemImage itemWithNormalImage:@"gametype_backbtn.jpg"
                                                       selectedImage: @"gametype_backbtn_pressed.jpg"
                                                              target:self
                                                            selector:@selector(returnToMainMenu)];
        backButton.position = ccp(0,-220);
//        backButton.scaleX = .5;
//        backButton.scaleY = .5;
        
//        CCLabelTTF *currentTown = [CCLabelTTF labelWithString: @"Current Town" dimensions:CGSizeMake(250,50) alignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:40 ];
//        
//        
//        CCMenuItem *currentTownGame = [CCMenuItemLabel itemWithLabel: currentTown target:self selector:@selector(playCurrentTownGame)];
//        currentTownGame.position = ccp(0,125);
//        /////////
//        
//        /////////
//        CCLabelTTF *hometown = [CCLabelTTF labelWithString: @"Hometown" dimensions:CGSizeMake(250,50) alignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:40 ];
//        
//        
//        CCMenuItem *hometownGame = [CCMenuItemLabel itemWithLabel: hometown target:self selector:@selector(playHometownGame)];
//        hometownGame.position = ccp(0,50);
//        /////////
//        
//        /////////
//        CCLabelTTF *highSchool = [CCLabelTTF labelWithString: @"High School" dimensions:CGSizeMake(250,50) alignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:40 ];
//        
//        
//        CCMenuItem *highSchoolGame = [CCMenuItemLabel itemWithLabel: highSchool target:self selector:@selector(playHighSchoolGame)];
//        highSchoolGame.position = ccp(0,-25);
//        /////////
//        
//        /////////
//        CCLabelTTF *college = [CCLabelTTF labelWithString: @"College" dimensions:CGSizeMake(250,50) alignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:40 ];
//        
//        
//        CCMenuItem *collegeGame = [CCMenuItemLabel itemWithLabel: college target:self selector:@selector(playCollegeGame)];
//        collegeGame.position = ccp(0,-100);
//        /////////
//        
//        /////////
//        CCLabelTTF *work = [CCLabelTTF labelWithString: @"Work" dimensions:CGSizeMake(250,50) alignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:40 ];
//        
//        
//        CCMenuItem *workGame = [CCMenuItemLabel itemWithLabel: work target:self selector:@selector(playWorkGame)];
//        workGame.position = ccp(0,-175);
//        /////////
//        
//        /////////
//        CCLabelTTF *back = [CCLabelTTF labelWithString: @"< Main Menu" dimensions:CGSizeMake(100,50) alignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:20 ];
//        
//        
//        CCMenuItem *backButton = [CCMenuItemLabel itemWithLabel: back target:self selector:@selector(returnToMainMenu)];
//        backButton.position = ccp(-125,187.5);
        /////////
        
        myMenu = [CCMenu menuWithItems: currentTown, hometown, highschool, college, work, backButton, nil];
        [self addChild: myMenu];
    }
    return self;
    
    
}

-(void) playBirthdayGame
    {
        [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0f scene:(CCScene*)[[QuizLayer alloc] init:player: 1]]];
    }

-(void) playCurrentTownGame
{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0f scene:(CCScene*)[[QuizLayer alloc] init:player:  2]]];
}

-(void) playHometownGame
{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0f scene:(CCScene*)[[QuizLayer alloc] init:player:  3]]];
}


-(void) playHighSchoolGame
{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0f scene:(CCScene*)[[QuizLayer alloc] init:player:  4]]];
}


-(void) playCollegeGame
{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0f scene:(CCScene*)[[QuizLayer alloc] init:player:  5]]];
}


-(void) playWorkGame
{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0f scene:(CCScene*)[[QuizLayer alloc] init:player:  6]]];
}

-(void) returnToMainMenu
{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0f scene:(CCScene*)[[StartLayer alloc] init]]];
}


                              
@end
