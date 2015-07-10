//
//  BNRAsset.m
//  Person
//
//  Created by John Leonard on 7/10/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description
{
  return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resalevalue];
} // description

-(void)dealloc
{
  NSLog(@"deallocating %@", self);
}



@end
