//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by mac on 15/12/25.
//  Copyright © 2015年 shiziwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject

// designated initialzier
- (instancetype)initWithCardCount:(NSUInteger)count
                usingDeck:(Deck *)deck;

- (void)chooseCardAtIndex:(NSUInteger)index;
- (Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;


@end
