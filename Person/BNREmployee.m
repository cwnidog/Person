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
  NSMutableArray *_assets;
}

@property (nonatomic) unsigned int officeAlarmCode;

@end

@implementation BNREmployee

// accessors for asset properties
- (void)setAssets:(NSArray *)a
{
  _assets = [a mutableCopy];
} // setAssets()

- (NSArray *)assets
{
  return [_assets copy];
} // assets get accessor

- (void)addAsset:(BNRAsset *)a
{
  // Is the list of assets nil?
  if (!_assets)
  {
    // create the array
    _assets = [[NSMutableArray alloc] init];
  }
  
  [_assets addObject:a];

} // addAsset()

- (void)removeAsset:(NSString *)targetLabel
{
  for (BNRAsset *a in _assets)
  {
    if ([a.label isEqualToString:targetLabel])
    {
      [_assets removeObject:a];
    }
  }
} // removeAsset()


- (unsigned int)valueOfAssets
{
  // sum up the resal evalue of the assets
  unsigned int sum = 0;
  for (BNRAsset *a in _assets)
  {
    sum += [a resalevalue];
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
