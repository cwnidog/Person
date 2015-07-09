//
//  BNREmployee.m
//  Person
//
//  Created by John Leonard on 7/8/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

// override normal description method
- (NSString *) desription
{
  return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
}

- (double)yearsOfEmployment
{
  if (self.hireDate)
  {
    //NSTInterval is the same as double
    NSTimeInterval secs = [self.hireDate timeIntervalSinceNow] * -1; // interval to date in th epast is negative, normalize
    return secs / 31557600.0; // seconds per year
  }
  
  else
  {
    return 0;
  }
} // yearsOfEmployment

- (float)bodyMassIndex
{
  float normalBMI = [super bodyMassIndex];
  return normalBMI * 0.9;
} // bodyMassIndex

@end
