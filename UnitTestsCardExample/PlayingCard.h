//
//  PlayingCard.h
//  UnitTestsCardExample
//
//  Created by Andre Furquin on 10/26/14.
//  Copyright (c) 2014 Clube de Autores. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property(strong, nonatomic) NSString *suit;
@property(nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
