//
//  StudentService.m
//  Laba5UnitTests
//
//  Created by Vladimir Obrizan on 19.12.13.
//  Copyright (c) 2013 Design and Test Lab. All rights reserved.
//

#import "StudentService.h"


@interface StudentService ()

@property (nonatomic, readwrite) NSArray *marks;

@end


//==============================================================================


@implementation StudentService


-(instancetype)initWithMarks:(NSArray *)marks
{
	self = [super init];
	if (self)
	{
		self.marks = marks;
	}
	return self;
}


//==============================================================================


-(BOOL)isValidMarks
{
	for (int i = 0; i <= self.marks.count-1; i++)
	{
		if ([self.marks[i] integerValue] > 5)
			return NO;
	}
	
	return YES;
}


//==============================================================================


-(BOOL)isPermittedToSession
{
	return self.marks.count == 5;
}


//==============================================================================


-(BOOL)isStipendia
{
	double sum = 0;
	for (int i = 0; i <= self.marks.count-1; i++)
		sum += [self.marks[i] doubleValue];
	return (sum / self.marks.count) >= 4.0;
}


//==============================================================================

@end
