//
//  FISLocation.m
//  locationTrivia-Objects
//
//  Created by Rama Milaneh on 3/7/17.
//  Copyright © 2017 Joe Burgess. All rights reserved.
//

#import "FISLocation.h"

@implementation FISLocation

-(instancetype)init {
    self = [self initWithName:@""
                     latitude:0.0
                    longitude:0.0];
    return self;
}

-(instancetype)initWithName:(NSString *)name latitude:(CGFloat)latitude longitude:(CGFloat)longitude {
    self = [super init];
    if (self) {
        _name = name;
        _latitude = latitude;
        _longitude = longitude;
        _trivia = [NSMutableArray array];
    }
    return self;
}

-(BOOL)hasValidData {
    if (self.name.length == 0 || self.name == NULL) {
        return NO;
    }
    if (self.latitude < -90 || self.latitude > 90) {
        return NO;
    }
    if (self.longitude <=-180 || self.longitude > 180) {
        return NO;
    }
    return YES;
}

-(FISTrivium *)triviumWithMostLikes {
    if (self.trivia.count == 0) {
        return nil;
    }else{
        NSSortDescriptor *sortByLikes = [NSSortDescriptor sortDescriptorWithKey:@"likes" ascending:NO];
        NSArray *triviaMostLikes = [self.trivia sortedArrayUsingDescriptors:@[sortByLikes]];
        return triviaMostLikes[0];
    }
}

-(NSString *)stringByTruncatingNameToLength:(NSUInteger)length {
    if (length > self.name.length) {
        return self.name;
    }
    return [self.name substringToIndex:length];
}


@end
