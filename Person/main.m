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
    
    NSMutableArray *allAssets = [[NSMutableArray alloc] init];
    
    // create 10 assets
    for (int i = 0; i < 10; i++)
    {
      //create an asset
      BNRAsset *asset = [[BNRAsset alloc] init];
      
      // give it an interesting label
      NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
      asset.label = currentLabel;
      asset.resaleValue = 350 + i * 17;
      
      // get a random number between 0 & 9, inclusive
      NSUInteger randomIndex = random() % [employees count];
      
      // find that employee and assign the asset to him
      BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
      [randomEmployee addAsset:asset];
      [allAssets addObject:asset];
      
    } // for 10 assets
    
    NSLog(@"Employees: %@", employees);
    NSLog(@"Giving up ownership of one employee");
    [employees removeObjectAtIndex:5];
    NSLog(@"allAssets: %@", allAssets);
    NSLog(@"Removing asset laptop 7 from assets");
    BNREmployee *targetEmployee = [employees objectAtIndex:2];
    [targetEmployee removeAsset:@"Laptop 7"];
    NSLog(@"Giving up ownership of array");
    
    allAssets = nil;
    employees = nil;
    
  } // autoreleasepool
  
  sleep(100); // give instrumentation some time to catch up
  return 0;
} // main()
