//
//  AnswerArrays.h
//  FrizTest
//
//  Created by Colin Lockareff on 7/22/13.
//
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface AnswerArrays : NSObject

-(id) init: (User*) userInit;

-(NSString*) randomCity;
-(NSString*) randomCollege;
-(NSString*) randomHighSchool;
-(NSString*) randomWork;
-(NSString*) randomHometown;


@end
