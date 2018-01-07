//
//  HYBGeolocatorPinView.h
// [y] hybris Platform
//
// Copyright (c) 2000-2015 hybris AG
// All rights reserved.
//
// This software is the confidential and proprietary information of hybris
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with hybris.

#import <UIKit/UIKit.h>

@interface HYBGeolocatorPinView : UIView

@property (nonatomic) UIColor   *pinColor;
@property (nonatomic) NSNumber  *pinIndex;

/**
 *  create a new instance of a pin view
 *
 *  @param pinColor UIColor
 *  @param pinIndex pinIndex
 *
 *  @return HYBGeolocatorPinView pinview
 */
- (instancetype)initWithColor:(UIColor*)pinColor forIndex:(NSNumber*)pinIndex;

@end