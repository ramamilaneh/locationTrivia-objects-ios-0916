//
//  FISTrivium.m
//  locationTrivia-Objects
//
//  Created by Rama Milaneh on 3/7/17.
//  Copyright © 2017 Joe Burgess. All rights reserved.
//

#import "FISTrivium.h"

@implementation FISTrivium

-(instancetype)init {
    self = [self initWithContent:@""
                           likes:0];
    return self;
}

-(instancetype)initWithContent:(NSString *)content likes:(NSUInteger)likes {
    self = [super init];
    if (self) {
        _content = content;
        _likes = likes;
    }
    return self;
}


@end
