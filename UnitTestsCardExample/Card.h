//
//  Card.h
//  UnitTestsCardExample
//
//  Created by Andre Furquin on 10/26/14.
//  Copyright (c) 2014 Clube de Autores. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property(strong, nonatomic) NSString *contents;
@property(nonatomic, getter=isChosen) BOOL chosen;
@property(nonatomic,getter=isMatched) BOOL matched;

-(int)match:(NSArray *)otherCards;

@end