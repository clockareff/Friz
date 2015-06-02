//
//  HighScoreLayer.m
//  FrizTest
//
//  Created by Colin Lockareff on 8/2/13.
//
//

#import "HighScoreLayer.h"
#import "StartLayer.h"

@implementation HighScoreLayer

-(id) init
{
    if ((self = [super init]))
	{
        glClearColor(0.1f, 0.6f, 0.3f, 1.0f);
        
        CCLabelTTF *titleLabel = [CCLabelTTF labelWithString: @"High Scores" dimensions:CGSizeMake(250,100) alignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:40 ];
        
        titleLabel.position = ccp(160,400);
        titleLabel.color = ccWHITE;
        [self addChild: titleLabel];
        //questLabel.position = ccp (screenWidth / 2, screenHeight*5 / 6);
        
        [MGWU getHighScoresForLeaderboard:@"defaultLeaderboard" withCallback:@selector(receivedScores:) onTarget:self];

        
        
        CCLabelTTF *menu = [CCLabelTTF labelWithString: @"Main Menu" dimensions:CGSizeMake(250,200) alignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:25 ];
        
        
        CCMenuItem *mainMenu = [CCMenuItemLabel itemWithLabel: menu target:self selector:@selector(switchToMainMenu)];
        mainMenu.position = ccp(0,-300);
        
        CCMenu *myMenu = [CCMenu menuWithItems: mainMenu , nil];
        [self addChild: myMenu];
    }
    
    return self;
    
}

- (void)receivedScores:(NSDictionary*)scores
{
    NSMutableArray *friendScores = [scores objectForKey: @"friends"];
    int numScores = 9;
    bool userScorePlaced = false;
    if ([friendScores count]<=9)
    {
        numScores = [friendScores count];
    }
    
    //    @"user" : @{@"name":@"player", @"score":@9001, @"rank":@42, @"friendrank":@1, @"fbname":@"John A. Smith", @"username":@"johnnys"},

    NSDictionary *user = [scores objectForKey: @"user"];
    NSString *userName = [user objectForKey: @"fbname"];
    int userScore = [user objectForKey: @"score"];
    NSNumber *userScoreObject = [NSNumber numberWithInt: userScore];
    int friendRank = [user objectForKey: @"friendrank"];
    
    
    int rank = 1;
    
    if (numScores == 0)
    {
        CCLabelTTF *message = [CCLabelTTF labelWithString: [NSString stringWithFormat: @"You are the only one of your friends who plays this game. Invite your friends to play!"] dimensions:CGSizeMake(250,300) alignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:20 ];
        message.position = ccp(0,125);
        message.color = ccWHITE;
        [self addChild: message];
        
        CCLabelTTF *userHighScore = [CCLabelTTF labelWithString: [NSString stringWithFormat: @"#%d: %@  %i", rank, userName, userScoreObject] dimensions:CGSizeMake(250,100) alignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:20 ];
        userHighScore.position = ccp(200,75);
        userHighScore.color = ccWHITE;
        [self addChild: userHighScore];
    }
    else
    {
        for (int i=0; i<numScores; i++)
        {
            NSDictionary *friend = [friendScores objectAtIndex: i];
            NSString *friendName = [friend objectForKey: @"fbname"];
            int friendScore = [friend objectForKey: @"score"];
            NSNumber *friendScoreObject = [NSNumber numberWithInt: friendScore];

            
            if (i==friendRank)
            {
                CCLabelTTF *message = [CCLabelTTF labelWithString: [NSString stringWithFormat: @"#%d: %@  %d", rank, userName, userScoreObject] dimensions:CGSizeMake(250,100) alignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:20 ];
                message.position = ccp(100,350-(50*rank));
                message.color = ccWHITE;
                [self addChild: message];
                i--;
            }
            else
            {
                CCLabelTTF *message = [CCLabelTTF labelWithString: [NSString stringWithFormat: @"#%d: %@  %i", rank, friendName, friendScoreObject] dimensions:CGSizeMake(250,100) alignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:20 ];
                message.position = ccp(100,350-(50*rank));
                message.color = ccWHITE;
                [self addChild: message];
            }
            rank ++;
        }

    }
    }

-(void) switchToMainMenu
{
    
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0f scene:(CCScene*)[[StartLayer alloc] init]]];
}

@end
