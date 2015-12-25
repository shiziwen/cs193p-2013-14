//
//  Deck.h
//  Matchismo
//
//  Created by mac on 15/12/23.
//  Copyright © 2015年 shiziwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
