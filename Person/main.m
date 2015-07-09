//
//  main.m
//  Person
//
//  Created by John Leonard on 7/7/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"

int main(int argc, const char *argv[])
{
  @autoreleasepool
  {
    // create a BNREmployee instance
    BNREmployee *mikey = [[BNREmployee alloc] init];
    
    // set the instance attribute values
    mikey.weightInKilos = 96;
    mikey.heightInMeters = 1.8;
    mikey.employeeID = 12;
    mikey.officeAlarmCode = 12345;
    mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"]; // deprecated, but following book
    
    float height = mikey.heightInMeters;
    int weight = mikey.weightInKilos;
    NSLog(@"mikey is %.2f meters tall and weight %d kilograms", height, weight);
    NSLog(@"Employee %u hired on %@", mikey.employeeID, mikey.hireDate);
      
    float bmi = [mikey bodyMassIndex];
    double years = [mikey yearsOfEmployment];
    NSLog(@"BMI of %.2f has worked with us for %.2f years", bmi, years);
    
  } // autoreleasepool
  
  return 0;
} // main()
