//
// HYBConsignment.h
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

@class HYBPointOfService;
@class HYBAddress;


@interface HYBConsignment : MTLModel <MTLJSONSerializing>

@property (nonatomic) NSString *statusDate;
@property (nonatomic) NSArray *entries;
@property (nonatomic) NSString *code;
@property (nonatomic) HYBPointOfService *deliveryPointOfService;
@property (nonatomic) HYBAddress *shippingAddress;
@property (nonatomic) NSString *trackingID;
@property (nonatomic) NSString *status;


+ (instancetype)consignmentWithParams:(NSDictionary*)params;

@end