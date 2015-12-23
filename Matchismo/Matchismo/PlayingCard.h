//
//  PlayingCard.h
//  Matchismo
//
//  Created by mac on 15/12/23.
//  Copyright © 2015年 shiziwen. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
