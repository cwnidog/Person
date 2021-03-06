//
//  BNREmployee.m
//  Person
//
//  Created by John Leonard on 7/8/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

// Class extensions
@interface BNREmployee()
{
  NSMutableSet *_assets;
}

@property (nonatomic) unsigned int officeAlarmCode;

@end

@implementation BNREmployee

- (void)addAsset:(BNRAsset *)a
{
  // Is the list of assets nil?
  if (!_assets)
  {
    // create the array
    _assets = [[NSMutableSet alloc] init];
  }
  
  [_assets addObject:a];
  a.holder = self;

} // addAsset()

- (void)removeAsset:(NSString *)targetLabel
{
  BNRAsset *targetAsset;
  
  for (BNRAsset *a in _assets)
  {
    if ([a.label isEqualToString:targetLabel])
    {
      targetAsset = a;
    }
    else
    {
      NSLog(@"Asset %@ not found.", targetLabel);
    }
  }
  [_assets removeObject:targetAsset];
} // removeAsset()


- (unsigned int)valueOfAssets
{
  // sum up the resal evalue of the assets
  unsigned int sum = 0;
  for (BNRAsset *a in _assets)
  {
    sum += [a resaleValue];
  }
  return sum;
} // valueOfAssets

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

// override normal description method
- (NSString *)description
{
  return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}

- (void)dealloc
{
  NSLog(@"deallocating %@", self);
}

@end
