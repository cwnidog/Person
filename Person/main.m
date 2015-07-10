//
//  main.m
//  Person
//
//  Created by John Leonard on 7/7/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char *argv[])
{
  @autoreleasepool
  {
    // create an array of BNREmployee objects
    NSMutableArray *employees = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 10; i++)
    {
      // create an instance of BNREmployee
      BNREmployee *mikey =[[BNREmployee alloc] init];
      
      // give the instance variables w/interesting values
      mikey.weightInKilos = 90 + i;
      mikey.heightInMeters = 1.8 + i/10.0;
      mikey.employeeID = i;
      
      // put the employee in the array
      [employees addObject:mikey];
    } // for 10 employees
    
    // create 10 assets
    for (int i = 0; i < 10; i++)
    {
      //create an asset
      BNRAsset *asset = [[BNRAsset alloc] init];
      
      // give it an interesting label
      NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
      asset.label = currentLabel;
      asset.resalevalue = 350 + i * 17;
      
      // get a random number between 0 & 9, inclusive
      NSUInteger randomIndex = random() % [employees count];
      
      // find that employee and assign the asset to him
      BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
      [randomEmployee addAsset:asset];
    } // for 10 assets
    
    NSLog(@"Employees: %@", employees);
    NSLog(@"Giving up ownership of one employee");
    [employees removeObjectAtIndex:5];
    NSLog(@"Giving up ownership of array");
    employees = nil;
    
  } // autoreleasepool
  
  return 0;
} // main()
