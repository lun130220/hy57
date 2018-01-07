//
// HYBPointOfService.h
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

@class HYBAddress;
@class HYBGeoPoint;
@class HYBImage;
@class HYBOpeningSchedule;


@interface HYBPointOfService : MTLModel <MTLJSONSerializing>

@property (nonatomic) HYBAddress *address;
@property (nonatomic) NSString *displayName;
@property (nonatomic) NSString *descriptor;
@property (nonatomic) NSString *formattedDistance;
@property (nonatomic) NSNumber *distanceKm;
@property (nonatomic) HYBGeoPoint *geoPoint;
@property (nonatomic) NSString *url;
@property (nonatomic) HYBImage *mapIcon;
@property (nonatomic) NSArray *storeImages;
@property (nonatomic) NSString *name;
@property (nonatomic) HYBOpeningSchedule *openingHours;
@property (nonatomic) NSString *storeContent;


+ (instancetype)pointOfServiceWithParams:(NSDictionary*)params;

@end