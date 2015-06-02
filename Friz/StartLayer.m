//
//  StartMenuLayer.m
//  FrizTest
//
//  Created by Colin Lockareff on 6/24/13.
//
//

#import "StartLayer.h"
#import "CCTouchDispatcher.h"
#import "QuizLayer.h"
#import "User.h"
#import "Friend.h"
#import "GamesLayer.h"
//#import "UserProfile.h"

CCMenu *myMenu;

CCLabelTTF *titleLabel;
CCMenuItem *playGame;
CCMenuItem *games;
User *user;

@implementation StartLayer

-(id) init
{
    if ((self = [super init]))
	{
//        if ([MGWU isFacebookActive])
//        {
//            user = [[Person alloc] init: [MGWU completeFacebookUser]];
//        }
        
        
        
        
        
//        glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
//        
//        titleLabel = [CCLabelTTF labelWithString: @"FRIZ" dimensions:CGSizeMake(400,300) alignment:kCCTextAlignmentCenter fontName:@"Bebas" fontSize:150 ];
//        
//        titleLabel.position = ccp(160,320);
//        titleLabel.color = ccBLACK;
//        [self addChild: titleLabel];
//        //questLabel.position = ccp (screenWidth / 2, screenHeight*5 / 6);
        
        CCSprite * background;
            background = [CCSprite spriteWithFile:@"MMbackground.jpg"];
            background.position = CGPointMake(160, 240);
        [self addChild:background];

        
        CCMenuItemImage *playGame = [CCMenuItemImage itemWithNormalImage:@"mainmenu_btn1.png"
            selectedImage: @"mainmenu_btn1_pressed.png"
            target:self
            selector:@selector(quickQuizScene)];
        playGame.position = ccp(0,-50);
//        playGame.scaleX = .5;
//        playGame.scaleY = .5;
        
        CCMenuItemImage *gameTypes = [CCMenuItemImage itemWithNormalImage:@"mainmenu_btn2.png"
            selectedImage: @"mainmenu_btn2_pressed.png"
            target:self
            selector:@selector(gameTypeScene)];
        gameTypes.position = ccp(0,-100);
//        gameTypes.scaleX = .5;
//        gameTypes.scaleY = .5;
        
        CCMenuItemImage *crossPromo = [CCMenuItemImage itemWithNormalImage:@"mainmenu_btn3.png"
            selectedImage: @"mainmenu_btn3_pressed.png"
            target:self
            selector:@selector(moreGames)];
        crossPromo.position = ccp(0,-150);
//        crossPromo.scaleX = .5;
//        crossPromo.scaleY = .5;
        
        CCMenuItemImage *about = [CCMenuItemImage itemWithNormalImage:@"mainmenu_btn4.png"
            selectedImage: @"mainmenu_btn4_pressed.png"
            target:self
            selector:@selector(quickQuizScene)];
        about.position = ccp(0,-200);
//        about.scaleX = .5;
//        about.scaleY = .5;
        
        
        
//        CCLabelTTF *play = [CCLabelTTF labelWithString: @"Quick Quiz" dimensions:CGSizeMake(250,0) alignment:kCCTextAlignmentCenter fontName:@"Bebas" fontSize:37 ];
//        play.color = ccGRAY;
//        
//        
//        playGame = [CCMenuItemLabel itemWithLabel: play target:self selector:@selector(quickQuizScene)];
        
        
        
//        CCLabelTTF *gameTypes = [CCLabelTTF labelWithString: @"Game Types" dimensions:CGSizeMake(250,0) alignment:kCCTextAlignmentCenter fontName:@"Bebas" fontSize:37 ];
//        gameTypes.color = ccGRAY;
//
//        
//        games = [CCMenuItemLabel itemWithLabel: gameTypes target:self selector:@selector(gameTypeScene)];
//        games.position = ccp(0,-100);
        
//        CCLabelTTF *crossPromo = [CCLabelTTF labelWithString: @"More Games" dimensions:CGSizeMake(250,0) alignment:kCCTextAlignmentCenter fontName:@"Bebas" fontSize:37 ];
//        crossPromo.color = ccGRAY;
//
//        
//        CCMenuItem *cross = [CCMenuItemLabel itemWithLabel: crossPromo target:self selector:@selector(moreGames)];
//        cross.position = ccp(0,-150);
//        
//        CCLabelTTF *aboutLabel = [CCLabelTTF labelWithString: @"About" dimensions:CGSizeMake(250,0) alignment:kCCTextAlignmentCenter fontName:@"Bebas" fontSize:37 ];
//        crossPromo.color = ccGRAY;
//        
//        
//        CCMenuItem *about = [CCMenuItemLabel itemWithLabel: aboutLabel target:self selector:@selector(moreGames)];
//        cross.position = ccp(0,-200);
        
        
        myMenu = [CCMenu menuWithItems: playGame, gameTypes, crossPromo, about,  nil];
        [self addChild: myMenu];
        
    }
    
    return self;
    
}

-(void) quickQuizScene
{
    NSMutableDictionary *userInfo = [MGWU completeFacebookUser];
    
     user = [[User alloc] init];
    [user setUsername: [userInfo objectForKey: @"name"]];
     NSString *bday = [userInfo objectForKey: @"birthday"];
     NSString *month = [bday substringToIndex: 2];
        NSRange range = NSMakeRange (3, 2);
     NSString *day = [bday substringWithRange: range];
    [user setBirthday: [user createBirthday: month: day]];
    if ([bday length] == 8)
    {
        NSString *year = [bday substringFromIndex: 6];
        [user setAge: [user createAge: year]];
    }
    else
        [user setAge: 0];
    [user setAddress: [[userInfo objectForKey: @"location"] objectForKey: @"name" ]];
    [user setHometown: [[userInfo objectForKey: @"hometown"] objectForKey: @"name"]];
    
    [user setMiddleSchool: [self getSchool: [userInfo objectForKey: @"education"]: 0]];
    [user setHighSchool: [self getSchool: [userInfo objectForKey: @"education"]: 1]];
    [user setCollege: [self getSchool: [userInfo objectForKey: @"education"]: 2]];
    [user setWork: [[[[userInfo objectForKey:@"work"] objectAtIndex: 0] objectForKey: @"employer"] objectForKey: @"name"]];
    [user setGender: [userInfo objectForKey: @"gender"]];
//    [gameUser setRelationship: @"Single"];
//    [gameUser setReligion: @"Presbyterean"];
//    [gameUser setPoliticalParty: @"Independant"];
    
    NSMutableArray *friends = [MGWU completeFriendsList];
    for(int i=0; i<[friends count]; i++)
    {
        NSDictionary *friendInfo = [friends objectAtIndex: i];
        Friend *buddy = [[Friend alloc] init];
        [buddy setUsername: [friendInfo objectForKey: @"name"]];
        NSString *bday = [friendInfo objectForKey: @"birthday"];
        NSString *month = [bday substringToIndex: 2];
        NSRange range = NSMakeRange (3, 2);
        NSString *day = [bday substringWithRange: range];
        [buddy setBirthday: [buddy createBirthday: month: day]];
        if ([bday length] == 8)
        {
            NSString *year = [bday substringFromIndex: 6];
            [buddy setAge: [buddy createAge: year]];
        }
        else
            [buddy setAge: 0];
        [buddy setAddress: [[friendInfo objectForKey: @"location"] objectForKey: @"name" ]];
        [buddy setHometown: [[friendInfo objectForKey: @"hometown"] objectForKey: @"name"]];
        
        [buddy setMiddleSchool: [self getSchool: [friendInfo objectForKey: @"education"]: 0]];
        [buddy setHighSchool: [self getSchool: [friendInfo objectForKey: @"education"]: 1]];
        [buddy setCollege: [self getSchool: [friendInfo objectForKey: @"education"]: 2]];
        [buddy setWork: [[[[friendInfo objectForKey:@"work"] objectAtIndex: 0] objectForKey: @"employer"] objectForKey: @"name"]];
        [buddy setGender: [friendInfo objectForKey: @"gender"]];
        [user addFriend: buddy];
        
    }
    
//    User *Colin = [[User alloc] init];
//    [Colin setUsername: @"Colin Lockareff"];
//    [Colin setBirthday: @"October 27"];
//    [Colin setAge: 18];
//    [Colin setAddress: @"Portola Valley, California"];
//    [Colin setHometown: @"Portola Valley, California"];
//    [Colin setMiddleSchool: @"Corte Madera School"];
//    [Colin setHighSchool: @"Sacred Heart Preparatory"];
//    [Colin setCollege: @"Michigan"];
//    [Colin setWork: @"MakeGamesWith.Us"];
//    [Colin setGender: @"Male"];
//    [Colin setRelationship: @"Single"];
//    [Colin setReligion: @"Presbyterean"];
//    [Colin setPoliticalParty: @"Independant"];
//    
//    Friend *Derek = [[Friend alloc] init];
//    [Derek setUsername: @"Derek Hunter"];
//    [Derek setBirthday: @"January 31"];
//    [Derek setAge: 18];
//    [Derek setAddress: @"Portola Valley, California"];
//    [Derek setHometown: @"Portola Valley, California"];
//    [Derek setMiddleSchool: @"Corte Madera School"];
//    [Derek setHighSchool: @"Sacred Heart Preparatory"];
//    [Derek setCollege: @"Georgetown"];
//    [Derek setWork: @"Boys and Girls Club"];
//    [Derek setGender: @"Male"];
//    [Derek setRelationship: @"In A Relationship"];
//    [Derek setReligion: @"Episcopal"];
//    [Derek setPoliticalParty: @"Democrat"];
//    [Colin addFriend: Derek];
//    
//    
//    Friend *Sharon = [[Friend alloc] init];
//    [Sharon setUsername: @"Sharon Lockareff"];
//    [Sharon setBirthday: @"March 5"];
//    [Sharon setAge: 51];
//    [Sharon setAddress: @"Portola Valley, California"];
//    [Sharon setHometown: @"Bloomington Hills, Michigan"];
//    [Sharon setMiddleSchool: @"Oakwood Middle School"];
//    [Sharon setHighSchool: @"Lahser"];
//    [Sharon setCollege: @"Stanford"];
//    [Sharon setWork: @"Boston Consulting Group"];
//    [Sharon setGender: @"Female"];
//    [Sharon setRelationship: @"Married"];
//    [Sharon setReligion: @"Presbyterian"];
//    [Sharon setPoliticalParty: @"Independant"];
//    [Colin addFriend: Sharon];
//    
//    Friend *Mark = [[Friend alloc] init];
//    [Mark setUsername: @"Mark Lockareff"];
//    [Mark setBirthday: @"January 12"];
//    [Mark setAge: 52];
//    [Mark setAddress: @"Portola Valley, California"];
//    [Mark setHometown: @"Los Angelas, California"];
//    [Mark setMiddleSchool: @"Edmonton Middle School"];
//    [Mark setHighSchool: @"Highlands"];
//    [Mark setCollege: @"Stanford"];
//    [Mark setWork: @"Nexenta Systems"];
//    [Mark setGender: @"Male"];
//    [Mark setRelationship: @"Married"];
//    [Mark setReligion: @"Catholic"];
//    [Mark setPoliticalParty: @"Independant"];
//    [Colin addFriend: Mark];
//    
//    Friend *Ryan = [[Friend alloc] init];
//    [Ryan setUsername: @"Ryan Gaertner"];
//    [Ryan setBirthday: @"September 22"];
//    [Ryan setAge: 18];
//    [Ryan setAddress: @"Atherton, California"];
//    [Ryan setHometown: @"Stamford, Connecticut"];
//    [Ryan setMiddleSchool: @"St. Raymonds School"];
//    [Ryan setHighSchool: @"Sacred Heart Preparatory"];
//    [Ryan setCollege: @"Stanford"];
//    [Ryan setWork: @"GetSwole.inc"];
//    [Ryan setGender: @"Male"];
//    [Ryan setRelationship: @"It's Complicated"];
//    [Ryan setReligion: @"Catholic"];
//    [Ryan setPoliticalParty: @"Republican"];
//    [Colin addFriend: Ryan];
//    
//    Friend *Katherine = [[Friend alloc] init];
//    [Katherine setUsername: @"Katherine Reed"];
//    [Katherine setBirthday: @"June 27"];
//    [Katherine setAge: 18];
//    [Katherine setAddress: @"Menlo Park, California"];
//    [Katherine setHometown: @"Menlo Park, California"];
//    [Katherine setMiddleSchool: @"Hillview"];
//    [Katherine setHighSchool: @"Sacred Heart Preparatory"];
//    [Katherine setCollege: @"Duke"];
//    [Katherine setWork: @"Sugar Shack"];
//    [Katherine setGender: @"Female"];
//    [Katherine setRelationship: @""];
//    [Katherine setReligion: @""];
//    [Katherine setPoliticalParty: @""];
//    [Colin addFriend: Katherine];
//    
//    Friend *Willy = [[Friend alloc] init];
//    [Willy setUsername: @"Willy Lamb"];
//    [Willy setBirthday: @"April 28"];
//    [Willy setAge: 18];
//    [Willy setAddress: @"Atherton, California"];
//    [Willy setHometown: @"Atherton, California"];
//    [Willy setMiddleSchool: @"St. Joseph's"];
//    [Willy setHighSchool: @"Sacred Heart Preparatory"];
//    [Willy setCollege: @"Santa Clara"];
//    [Willy setWork: @"GetSwole.inc"];
//    [Willy setGender: @"Male"];
//    [Willy setRelationship: @""];
//    [Willy setReligion: @""];
//    [Willy setPoliticalParty: @""];
//    [Colin addFriend: Willy];
//    
//    Friend *Tiger = [[Friend alloc] init];
//    [Tiger setUsername: @"Tiger Woods"];
//    [Tiger setBirthday: @""];
//    [Tiger setAge: 37];
//    [Tiger setAddress: @"Jupiter Island, Florida"];
//    [Tiger setHometown: @"Cypress, California"];
//    [Tiger setMiddleSchool: @"Homeschooled"];
//    [Tiger setHighSchool: @"Western Highschool"];
//    [Tiger setCollege: @"Stanford"];
//    [Tiger setWork: @"PGA Tour"];
//    [Tiger setGender: @"Male"];
//    [Tiger setRelationship: @"It's Complicated"];
//    [Tiger setReligion: @""];
//    [Tiger setPoliticalParty: @""];
//    [Colin addFriend: Tiger];
//    
//    Friend *Obama = [[Friend alloc] init];
//    [Obama setUsername: @"Barack Obama"];
//    [Obama setBirthday: @"August 4"];
//    [Obama setAge: 0];
//    [Obama setAddress: @"White House, Washington D.C."];
//    [Obama setHometown: @"Honolulu, Hawaii"];
//    [Obama setMiddleSchool: @"St. Francis of Assisi Catholic School"];
//    [Obama setHighSchool: @"Punahou Highschool"];
//    [Obama setCollege: @"Occidental College"];
//    [Obama setWork: @"White House"];
//    [Obama setGender: @"Male"];
//    [Obama setRelationship: @"Married"];
//    [Obama setReligion: @"Christian"];
//    [Obama setPoliticalParty: @"Democrat"];
//    [Colin addFriend: Obama];
    
    QuizLayer *layer = [[QuizLayer alloc] init];
    [layer switchGameOver: false];
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0f scene:(CCScene*)[[QuizLayer alloc] init: user: 0]]];
}

- (void) gameTypeScene
{
   
    NSMutableDictionary *userInfo = [MGWU completeFacebookUser];
    
    user = [[User alloc] init];
    [user setUsername: [userInfo objectForKey: @"name"]];
    NSString *bday = [userInfo objectForKey: @"birthday"];
    NSString *month = [bday substringToIndex: 2];
    NSRange range = NSMakeRange (3, 2);
    NSString *day = [bday substringWithRange: range];
    [user setBirthday: [user createBirthday: month: day]];
    if ([bday length] == 8)
    {
        NSString *year = [bday substringFromIndex: 6];
        [user setAge: [user createAge: year]];
    }
    else
        [user setAge: 0];
    [user setAddress: [[userInfo objectForKey: @"location"] objectForKey: @"name" ]];
    [user setHometown: [[userInfo objectForKey: @"hometown"] objectForKey: @"name"]];
    
    [user setMiddleSchool: [self getSchool: [userInfo objectForKey: @"education"]: 0]];
    [user setHighSchool: [self getSchool: [userInfo objectForKey: @"education"]: 1]];
    [user setCollege: [self getSchool: [userInfo objectForKey: @"education"]: 2]];
    [user setWork: [[[[userInfo objectForKey:@"work"] objectAtIndex: 0] objectForKey: @"employer"] objectForKey: @"name"]];
    [user setGender: [userInfo objectForKey: @"gender"]];
    //    [gameUser setRelationship: @"Single"];
    //    [gameUser setReligion: @"Presbyterean"];
    //    [gameUser setPoliticalParty: @"Independant"];
    
    NSMutableArray *friends = [MGWU completeFriendsList];
    for(int i=0; i<[friends count]; i++)
    {
        NSDictionary *friendInfo = [friends objectAtIndex: i];
        Friend *buddy = [[Friend alloc] init];
        [buddy setUsername: [friendInfo objectForKey: @"name"]];
        NSString *bday = [friendInfo objectForKey: @"birthday"];
        NSString *month = [bday substringToIndex: 2];
        NSRange range = NSMakeRange (3, 2);
        NSString *day = [bday substringWithRange: range];
        [buddy setBirthday: [buddy createBirthday: month: day]];
        if ([bday length] == 8)
        {
            NSString *year = [bday substringFromIndex: 6];
            [buddy setAge: [buddy createAge: year]];
        }
        else
            [buddy setAge: 0];
        [buddy setAddress: [[friendInfo objectForKey: @"location"] objectForKey: @"name" ]];
        [buddy setHometown: [[friendInfo objectForKey: @"hometown"] objectForKey: @"name"]];
        
        [buddy setMiddleSchool: [self getSchool: [friendInfo objectForKey: @"education"]: 0]];
        [buddy setHighSchool: [self getSchool: [friendInfo objectForKey: @"education"]: 1]];
        [buddy setCollege: [self getSchool: [friendInfo objectForKey: @"education"]: 2]];
        [buddy setWork: [[[[friendInfo objectForKey:@"work"] objectAtIndex: 0] objectForKey: @"employer"] objectForKey: @"name"]];
        [buddy setGender: [friendInfo objectForKey: @"gender"]];
        [user addFriend: buddy];
        
    }
    
//    User *Colin = [[User alloc] init];
//    [Colin setUsername: @"Colin Lockareff"];
//    [Colin setBirthday: @"October 27"];
//    [Colin setAge: 18];
//    [Colin setAddress: @"Portola Valley, California"];
//    [Colin setHometown: @"Portola Valley, California"];
//    [Colin setMiddleSchool: @"Corte Madera School"];
//    [Colin setHighSchool: @"Sacred Heart Preparatory"];
//    [Colin setCollege: @"Michigan"];
//    [Colin setWork: @"MakeGamesWith.Us"];
//    [Colin setGender: @"Male"];
//    [Colin setRelationship: @"Single"];
//    [Colin setReligion: @"Presbyterean"];
//    [Colin setPoliticalParty: @"Independant"];
//
//    Friend *Derek = [[Friend alloc] init];
//    [Derek setUsername: @"Derek Hunter"];
//    [Derek setBirthday: @"January 31"];
//    [Derek setAge: 18];
//    [Derek setAddress: @"Portola Valley, California"];
//    [Derek setHometown: @"Portola Valley, California"];
//    [Derek setMiddleSchool: @"Corte Madera School"];
//    [Derek setHighSchool: @"Sacred Heart Preparatory"];
//    [Derek setCollege: @"Georgetown"];
//    [Derek setWork: @"Boys and Girls Club"];
//    [Derek setGender: @"Male"];
//    [Derek setRelationship: @"In A Relationship"];
//    [Derek setReligion: @"Episcopal"];
//    [Derek setPoliticalParty: @"Democrat"];
//    [Colin addFriend: Derek];
//    
//    
//    Friend *Sharon = [[Friend alloc] init];
//    [Sharon setUsername: @"Sharon Lockareff"];
//    [Sharon setBirthday: @"March 5"];
//    [Sharon setAge: 51];
//    [Sharon setAddress: @"Portola Valley, California"];
//    [Sharon setHometown: @"Bloomington Hills, Michigan"];
//    [Sharon setMiddleSchool: @"Oakwood Middle School"];
//    [Sharon setHighSchool: @"Lahser"];
//    [Sharon setCollege: @"Stanford"];
//    [Sharon setWork: @"Boston Consulting Group"];
//    [Sharon setGender: @"Female"];
//    [Sharon setRelationship: @"Married"];
//    [Sharon setReligion: @"Presbyterian"];
//    [Sharon setPoliticalParty: @"Independant"];
//    [Colin addFriend: Sharon];
//    
//    Friend *Mark = [[Friend alloc] init];
//    [Mark setUsername: @"Mark Lockareff"];
//    [Mark setBirthday: @"January 12"];
//    [Mark setAge: 52];
//    [Mark setAddress: @"Portola Valley, California"];
//    [Mark setHometown: @"Los Angelas, California"];
//    [Mark setMiddleSchool: @"Edmonton Middle School"];
//    [Mark setHighSchool: @"Highlands"];
//    [Mark setCollege: @"Stanford"];
//    [Mark setWork: @"Nexenta Systems"];
//    [Mark setGender: @"Male"];
//    [Mark setRelationship: @"Married"];
//    [Mark setReligion: @"Catholic"];
//    [Mark setPoliticalParty: @"Independant"];
//    [Colin addFriend: Mark];
//    
//    Friend *Ryan = [[Friend alloc] init];
//    [Ryan setUsername: @"Ryan Gaertner"];
//    [Ryan setBirthday: @"September 22"];
//    [Ryan setAge: 18];
//    [Ryan setAddress: @"Atherton, California"];
//    [Ryan setHometown: @"Stamford, Connecticut"];
//    [Ryan setMiddleSchool: @"St. Raymonds School"];
//    [Ryan setHighSchool: @"Sacred Heart Preparatory"];
//    [Ryan setCollege: @"Stanford"];
//    [Ryan setWork: @"GetSwole.inc"];
//    [Ryan setGender: @"Male"];
//    [Ryan setRelationship: @"It's Complicated"];
//    [Ryan setReligion: @"Catholic"];
//    [Ryan setPoliticalParty: @"Republican"];
//    [Colin addFriend: Ryan];
//    
//    Friend *Katherine = [[Friend alloc] init];
//    [Katherine setUsername: @"Katherine Reed"];
//    [Katherine setBirthday: @"June 27"];
//    [Katherine setAge: 18];
//    [Katherine setAddress: @"Menlo Park, California"];
//    [Katherine setHometown: @"Menlo Park, California"];
//    [Katherine setMiddleSchool: @"Hillview"];
//    [Katherine setHighSchool: @"Sacred Heart Preparatory"];
//    [Katherine setCollege: @"Duke"];
//    [Katherine setWork: @"Sugar Shack"];
//    [Katherine setGender: @"Female"];
//    [Katherine setRelationship: @""];
//    [Katherine setReligion: @""];
//    [Katherine setPoliticalParty: @""];
//    [Colin addFriend: Katherine];
//    
//    Friend *Willy = [[Friend alloc] init];
//    [Willy setUsername: @"Willy Lamb"];
//    [Willy setBirthday: @"April 28"];
//    [Willy setAge: 18];
//    [Willy setAddress: @"Atherton, California"];
//    [Willy setHometown: @"Atherton, California"];
//    [Willy setMiddleSchool: @"St. Joseph's"];
//    [Willy setHighSchool: @"Sacred Heart Preparatory"];
//    [Willy setCollege: @"Santa Clara"];
//    [Willy setWork: @"GetSwole.inc"];
//    [Willy setGender: @"Male"];
//    [Willy setRelationship: @""];
//    [Willy setReligion: @""];
//    [Willy setPoliticalParty: @""];
//    [Colin addFriend: Willy];
//    
//    Friend *Tiger = [[Friend alloc] init];
//    [Tiger setUsername: @"Tiger Woods"];
//    [Tiger setBirthday: @""];
//    [Tiger setAge: 37];
//    [Tiger setAddress: @"Jupiter Island, Florida"];
//    [Tiger setHometown: @"Cypress, California"];
//    [Tiger setMiddleSchool: @"Homeschooled"];
//    [Tiger setHighSchool: @"Western Highschool"];
//    [Tiger setCollege: @"Stanford"];
//    [Tiger setWork: @"PGA Tour"];
//    [Tiger setGender: @"Male"];
//    [Tiger setRelationship: @"It's Complicated"];
//    [Tiger setReligion: @""];
//    [Tiger setPoliticalParty: @""];
//    [Colin addFriend: Tiger];
//    
//    Friend *Obama = [[Friend alloc] init];
//    [Obama setUsername: @"Barack Obama"];
//    [Obama setBirthday: @"August 4"];
//    [Obama setAge: 0];
//    [Obama setAddress: @"White House, Washington D.C."];
//    [Obama setHometown: @"Honolulu, Hawaii"];
//    [Obama setMiddleSchool: @"St. Francis of Assisi Catholic School"];
//    [Obama setHighSchool: @"Punahou Highschool"];
//    [Obama setCollege: @"Occidental College"];
//    [Obama setWork: @"White House"];
//    [Obama setGender: @"Male"];
//    [Obama setRelationship: @"Married"];
//    [Obama setReligion: @"Christian"];
//    [Obama setPoliticalParty: @"Democrat"];
//    [Colin addFriend: Obama];
    
    QuizLayer *layer = [[QuizLayer alloc] init];
    [layer switchGameOver: false];
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0f scene:(CCScene*)[[GamesLayer alloc] init: user]]];
}


-(NSString*) getSchool: (NSMutableArray*) education: (int) type
{
    for (int i=0; i<[education count]; i++)
    {
        if (type == 0)
            if ([[[education objectAtIndex: i] objectForKey: @"type"] isEqual: @"Middle School"])
                return [[[education objectAtIndex: i]  objectForKey: @"school"]  objectForKey: @"name"];
        if (type == 1)
            if ([[[education objectAtIndex: i] objectForKey: @"type"] isEqual: @"High School"])
                return [[[education objectAtIndex: i] objectForKey: @"school"]  objectForKey: @"name"];
        if (type == 2)
            if ([[[education objectAtIndex: i] objectForKey: @"type"] isEqual: @"College"])
                return [[[education objectAtIndex: i] objectForKey: @"school"]  objectForKey: @"name"];
    }
    
    return @"";
    
}

-(void) moreGames
{
    [MGWU displayCrossPromo];
}

@end
