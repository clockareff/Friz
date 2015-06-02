//
//  GameSummary.m
//  FrizTest
//
//  Created by Colin Lockareff on 7/17/13.
//
//

#import "GameSummary.h"
#import "StartLayer.h"
#import "QuizLayer.h"
#import "User.h"
#import "HighScoreLayer.h"

CCMenu *myMenu;

CCLabelTTF *titleLabel;
CCMenuItem *mainMenu;
CCMenuItem *highScoreLabel;
User *person;
int game;

@implementation GameSummary

-(id) init: (User*) user: (int) numRight: (int) numWrong: (int) quizScore: (int) gameType
{
    if ((self = [super init]))
	{
        person = user;
        game = gameType;
        

        CCSprite * background;
        background = [CCSprite spriteWithFile:@"GSbackground.jpg"];
        background.position = CGPointMake(160, 240);
        [self addChild:background];
        
//        titleLabel = [CCLabelTTF labelWithString: @"Quiz Summary:" dimensions:CGSizeMake(250,100) alignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:40 ];
        
//        titleLabel.position = ccp(160,375);
//        titleLabel.color = ccWHITE;
//        [self addChild: titleLabel];
        //questLabel.position = ccp (screenWidth / 2, screenHeight*5 / 6);
       
        
        float percent = numRight/(numRight+numWrong);
        
        NSString *analysis;
        if (percent > .7)
            analysis = @"Great Job! You really know your friends!";
        else if (numRight > .3)
            analysis = @"Are you sure these are really your friends?!";
        else
            analysis = @"You are a bad friend!";
        
        CCLabelTTF *message = [CCLabelTTF labelWithString: [NSString stringWithFormat: @"Your score was %d! You got %d out of %d quiz questions right. %@", quizScore, numRight, numWrong+numRight, analysis] dimensions:CGSizeMake(250,300) alignment:kCCTextAlignmentCenter fontName:@"Montserrat-Regular" fontSize:20 ];
        
         message.position = ccp(160,220);
         message.color = ccBLACK;
        [self addChild: message];
        //questLabel.position = ccp (screenWidth / 2, screenHeight*5 / 6);
      
        
        CCMenuItemImage *playGameAgain = [CCMenuItemImage itemWithNormalImage:@"recap_btn1.png"
                                                         selectedImage: @"recap_btn1_pressed.png"
                                                                target:self
                                                              selector:@selector(playAgain)];
        playGameAgain.position = ccp(0,-50);
        
        CCMenuItemImage *invite = [CCMenuItemImage itemWithNormalImage:@"recap_btn2.jpg"
                                                        selectedImage: @"recap_btn2_pressed.jpg"
                                                               target:self
                                                             selector:@selector(inviteFriends)];
        invite.position = ccp(0,-105);
        
        CCMenuItemImage *facebook = [CCMenuItemImage itemWithNormalImage:@"recap_btn3.jpg"
                                                         selectedImage: @"recap_btn3_pressed.jpg"
                                                                target:self
                                                              selector:@selector(postToFacebook)];
        facebook.position = ccp(0,-160);
        
        
        CCMenuItemImage *highScores = [CCMenuItemImage itemWithNormalImage:@"recap_btn4.jpg"
                                                         selectedImage: @"recap_btn4_pressed.jpg"
                                                                target:self
                                                              selector:@selector(switchToHighScores)];
        highScores.position = ccp(0,-215);
        
//        CCLabelTTF *highScores = [CCLabelTTF labelWithString: @"High Scores" dimensions:CGSizeMake(250,0) alignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:25 ];
//        
//        
//        highScoreLabel = [CCMenuItemLabel itemWithLabel: highScores target:self selector:@selector(switchToHighScores)];
//        highScoreLabel.position = ccp(0,-160);
        
        
//        CCLabelTTF *menu = [CCLabelTTF labelWithString: @"Main Menu" dimensions:CGSizeMake(250,0) alignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:25 ];
//        
//        
//        mainMenu = [CCMenuItemLabel itemWithLabel: menu target:self selector:@selector(switchToMainMenu)];
//        mainMenu.position = ccp(0,-200);
//        
//        CCLabelTTF *shareOnFacebook = [CCLabelTTF labelWithString: @"Post To Facebook" dimensions:CGSizeMake(250,0) alignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:25 ];
        
        
//        CCMenuItem *toFacebook = [CCMenuItemLabel itemWithLabel: shareOnFacebook target:self selector:@selector(postToFacebook)];
//        toFacebook.position = ccp(0,-120);
//        
//        CCLabelTTF *inviteFriendsLabel = [CCLabelTTF labelWithString: @"Invite Friends" dimensions:CGSizeMake(250,0) alignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:25 ];
        
        
//        CCMenuItem *invite = [CCMenuItemLabel itemWithLabel: inviteFriendsLabel target:self selector:@selector(inviteFriends)];
//        invite.position = ccp(0,-80);
//        
//        
//        CCLabelTTF *playAgainLabel = [CCLabelTTF labelWithString: @"Play Again" dimensions:CGSizeMake(250,0) alignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:25 ];
        
        
//        CCMenuItem *playGameAgain = [CCMenuItemLabel itemWithLabel: playAgainLabel target:self selector:@selector(playAgain)];
//        playGameAgain.position = ccp(0,-30);
//        
//        
        myMenu = [CCMenu menuWithItems: highScores, invite, facebook, playGameAgain , nil];
        [self addChild: myMenu];
        
        [MGWU submitHighScore:quizScore byPlayer:[user getUsername] forLeaderboard:@"defaultLeaderboard"];

    }
    
    return self;
    
}

-(void) switchToMainMenu
{

    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0f scene:(CCScene*)[[StartLayer alloc] init]]];
}

-(void) switchToHighScores
{
    
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0f scene:(CCScene*)[[HighScoreLayer alloc] init]]];
}

-(void) postToFacebook
{
    [MGWU shareWithTitle:[NSString stringWithFormat:@"%@ just had a great time playing Friz!", [person getUsername] ] caption:@"Download Friz in the App Store and see how well you know your facebook friends!" andDescription:@"Friz is a brand new iPhone application which quizzes you own how well you really know your facebook friends."];
}

-(void) inviteFriends
{
    [MGWU inviteFriendsWithMessage:@"Come play Friz and see how well you really know your facebook friends!"];

}

-(void) playAgain
{
    QuizLayer *sample = [[QuizLayer alloc] init: person: game];
    [sample resetGame];
    [sample switchGameOver:false];
    
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0f scene:(CCScene*)[[QuizLayer alloc] init: person: game]]];
    
}




@end
