//
//  BNREmployee.m
//  Person
//
//  Created by John Leonard on 7/8/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

- (double)yearsOfEmployment
{
  if (self.hireDate)
  {
    //NSTInterval is the same as double
    NSDate *now = [NSDate date];
    NSTimeInterval secs = [now timeIntervalSinceDate:now];
    return secs / 31557600.0; // seconds per year
  }
  
  else
  {
    return 0;
  }
} // yearsOfEmployment

- (float)bodyMassIndex
{
  return 19.0;
} // bodyMassIndex

@end
