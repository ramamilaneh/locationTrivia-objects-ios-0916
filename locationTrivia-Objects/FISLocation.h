//
//  FISLocation.h
//  locationTrivia-Objects
//
//  Created by Rama Milaneh on 3/7/17.
//  Copyright © 2017 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISTrivium.h"

@interface FISLocation : NSObject


@property (strong,nonatomic)NSString *name;
@property (nonatomic)CGFloat latitude;
@property (nonatomic)CGFloat longitude;
@property (nonatomic)NSMutableArray *trivia;
-(instancetype)init;
-(instancetype)initWithName:(NSString *)name
                   latitude:(CGFloat) latitude
                  longitude:(CGFloat) longitude;
-(NSString *)stringByTruncatingNameToLength:(NSUInteger) length;
-(BOOL)hasValidData;
-(FISTrivium *)triviumWithMostLikes;

@end
