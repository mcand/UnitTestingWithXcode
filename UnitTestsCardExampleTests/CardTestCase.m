//
//  CardTestCase.m
//  UnitTestsCardExample
//
//  Created by Andre Furquin on 10/26/14.
//  Copyright (c) 2014 Clube de Autores. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Card.h"

@interface CardTestCase : XCTestCase

@end

@implementation CardTestCase

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

-(void)testMatchesDifferentCardWithSameContents
{
    Card *card1 = [[Card alloc] init];
    card1.contents = @"one";
    Card *card2 = [[Card alloc] init];
    card2.contents = @"one";
    NSArray *handOfCards = @[card2];
    int matchCount = [card1 match:handOfCards];
    
    XCTAssertEqual(matchCount, 1, @"Should have matched");
}

-(void)testDoesNotMatchDifferentCard
{
    Card *card1 = [[Card alloc] init];
    card1.contents = @"one";
    Card *card2 = [[Card alloc] init];
    card2.contents = @"two";
    NSArray *handOfCards = @[card2];
    int matchCount = [card1 match:handOfCards];
    XCTAssertEqual(matchCount, 0, @"No matches, right?");
    
}

- (void)testMatchesForAtLeastOneCard
{
    NSLog(@"%s doing work...", __PRETTY_FUNCTION__);
    
    Card *card1 = [[Card alloc] init];
    card1.contents = @"one";
    Card *card2 = [[Card alloc] init];
    card2.contents = @"two";
    Card *card3 = [[Card alloc] init];
    card3.contents = @"one";
    NSArray *arrayOfCards = @[card2, card3];
    int matchCount = [card1 match:arrayOfCards];
    XCTAssertEqual(matchCount, 1, @"Should have matched at least 1");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
