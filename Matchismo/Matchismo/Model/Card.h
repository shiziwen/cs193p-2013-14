//
//  Card.h
//  Matchismo
//
//  Created by mac on 15/12/23.
//  Copyright © 2015年 shiziwen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMathed) BOOL mathed;

- (int)match:(NSArray *)otherCards;

@end
