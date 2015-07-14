//
//  BNREmployee.h
//  Person
//
//  Created by John Leonard on 7/8/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

@class BNRAsset;

@interface BNREmployee : BNRPerson
@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSArray *assets;

- (double)yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
- (void)removeAsset:(NSString *)targetLabel;
- (unsigned int)valueOfAssets;

@end
