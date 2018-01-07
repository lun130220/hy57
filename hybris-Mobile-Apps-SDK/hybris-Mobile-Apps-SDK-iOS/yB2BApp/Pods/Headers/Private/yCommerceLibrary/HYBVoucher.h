//
// HYBVoucher.h
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

@class HYBPrice;
@class HYBCurrency;


@interface HYBVoucher : MTLModel <MTLJSONSerializing>

@property (nonatomic) NSString *code;
@property (nonatomic) NSString *valueString;
@property (nonatomic) BOOL freeShipping;
@property (nonatomic) NSString *valueFormatted;
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *descriptor;
@property (nonatomic) HYBPrice *appliedValue;
@property (nonatomic) HYBCurrency *currency;
@property (nonatomic) NSNumber *value;
@property (nonatomic) NSString *voucherCode;


+ (instancetype)voucherWithParams:(NSDictionary*)params;

@end