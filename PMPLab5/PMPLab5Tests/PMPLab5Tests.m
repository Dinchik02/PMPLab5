//
//  PMPLab5Tests.m
//  PMPLab5Tests
//
//  Created by Diana Volodchenko on 12/28/15.
//  Copyright © 2015 Diana Volodchenko. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "StudentService.h"

@interface PMPLab5Tests : XCTestCase
{
    StudentService *_service;
}
@end

@implementation PMPLab5Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

-(void)test001_initWithMarks
{
    _service = [[StudentService alloc] initWithMarks:@[@(5), @(4)]];
    XCTAssertTrue(_service.marks.count == 2, @"Object init error");
}

-(void) test002_isVaildMarks
{
    BOOL isValidMarks = [_service isValidMarks];
    XCTAssertTrue(isValidMarks == YES, @"Object init error; marks are not valid");
}

-(void)test003_isPermittedToSession
{
    BOOL isPermittedToSessia = [_service isPermittedToSession];
    XCTAssertTrue(isPermittedToSessia == NO, @"Method error; student is not permitted to session");
}

-(void)test004_isStipendia
{
    BOOL isStipendia = [_service isStipendia];
    XCTAssertTrue(isStipendia == NO, @"Method error; student has no stipendia");
}

@end
