//
// HYBCartList.h
// [y] hybris Platform
//
// Copyright (c) 2000-2015 hybris AG
// All rights reserved.
//
// This software is the confidential and proprietary information of hybris
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with hybris.
//
// Warning:This file was auto-generated by OCC2Ojbc.
//

#import <Foundation/Foundation.h>
#import "MTLModel.h"
#import "MTLJSONAdapter.h"



@interface HYBCartList : MTLModel <MTLJSONSerializing>

@property (nonatomic) NSArray *carts;


+ (instancetype)cartListWithParams:(NSDictionary*)params;

@end