//
//  GameSummary.h
//  FrizTest
//
//  Created by Colin Lockareff on 7/17/13.
//
//

#import "CCLayer.h"
#import "User.h"

@interface GameSummary : CCLayer
-(id) init: (User*) user: (int) numRight: (int) numWrong: (int) quizScore: (int) gameType;
@end
