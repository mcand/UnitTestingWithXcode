//
//  Deck.h
//  UnitTestsCardExample
//
//  Created by Andre Furquin on 10/26/14.
//  Copyright (c) 2014 Clube de Autores. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;

@end
