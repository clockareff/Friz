//
//  Transition.h
//  FrizTest
//
//  Created by Colin Lockareff on 7/25/13.
//
//

#import "CCLayer.h"
#import "User.h"

@interface Transition : CCLayer

- (id)init:(NSString*) outcome: (int) gameType: (User*) person:(int) time: (int) numRight: (int) numWrong: (int) score;

@end
