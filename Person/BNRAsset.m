//
//  BNRAsset.m
//  Person
//
//  Created by John Leonard on 7/10/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

- (NSString *)description
{
  // is holder non-nil?
  if (self.holder)
  {
    return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", self.label, self.resaleValue, self.holder];
  }
  
  else
  {
    return [NSString stringWithFormat:@"<%@: $%d unassigned", self.label, self.resaleValue];
  }
} // description

-(void)dealloc
{
  NSLog(@"deallocating %@", self);
}

@end
