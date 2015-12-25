//
//  CardMatchingGame.m
//  Matchismo
//
//  Created by mac on 15/12/25.
//  Copyright © 2015年 shiziwen. All rights reserved.
//

#import "CardMatchingGame.h"

@interface CardMatchingGame()
@property (nonatomic, readwrite) NSInteger score;
@property (nonatomic, strong) NSMutableArray *cards; // of Card
@end

@implementation CardMatchingGame

// lazy instantiation
- (NSMutableArray *)cards {
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

- (instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck {
    self = [super init];
    
    if (self) {
        for (int i = 0; i < count; i++) {
            Card *card = [deck drawRandomCard];
            if (card) {
                [self.cards addObject:card];
                
            } else {
                self = nil;
                break;
            }
        }
    }
    
    return self;
}

- (Card *)cardAtIndex:(NSUInteger)index {
    return (index < [self.cards count]) ? self.cards[index] : nil;
}

static const int MISMATCH_PENALTY = 2;
static const int MATCH_BONUS = 4;
static const int COST_TO_CHOOSE = 1;


- (void)chooseCardAtIndex:(NSUInteger)index {
    Card *card = [self cardAtIndex:index];
    
    if (!card.isMathed) {
        if (card.isChosen) {
            card.chosen = NO;
        } else {
            for (Card *otherCard in self.cards) {
                if (otherCard.isChosen && !otherCard.isMathed) {
                    int matchScore = [card match:@[otherCard]];
                    if (matchScore) {
                        otherCard.mathed = YES;
                        card.mathed = YES;
                        self.score += matchScore * MATCH_BONUS;
                    } else {
                        otherCard.chosen = NO;
                        self.score -= MISMATCH_PENALTY;
                    }
                    
                    break;
                    
                }
            }
            self.score -= COST_TO_CHOOSE;
            card.chosen = YES;
        }
    }
}

@end
