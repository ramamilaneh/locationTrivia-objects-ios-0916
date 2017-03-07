//
//  FISTrivium.h
//  locationTrivia-Objects
//
//  Created by Rama Milaneh on 3/7/17.
//  Copyright © 2017 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISTrivium : NSObject

@property (nonatomic)NSString *content;
@property (nonatomic)NSUInteger likes;

-(instancetype)init;
-(instancetype)initWithContent:(NSString *)content
                         likes:(NSUInteger) likes;
@end
