//
//  main.m
//  Person
//
//  Created by John Leonard on 7/7/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char *argv[])
{
  @autoreleasepool
  {
    // create a BNRPerson instance
    BNRPerson *mikey = [[BNRPerson alloc] init];
    
    // set the instance attribute values
    [mikey setWeightInKilos:96];
    [mikey setHeightInMeters:1.8];
   // @autoreleasepool
  
  float height = [mikey heightInMeters];
  int weight = [mikey weightInKilos];
  NSLog(@"mikey is %.2f meters tall and weight %d kilograms", height, weight);
  
  float bmi = [mikey bodyMassIndex];
  NSLog(@"mikey has a BMI of %f", bmi);
    
  } // autoreleasepool
  
  return 0;
} // main()
