//
// HYBPromotionOrderEntryConsumed.m
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

#import "HYBPromotionOrderEntryConsumed.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"



@implementation HYBPromotionOrderEntryConsumed

+ (instancetype)promotionOrderEntryConsumedWithParams:(NSDictionary*)params {

NSError *error = nil;
HYBPromotionOrderEntryConsumed *object = [MTLJSONAdapter modelOfClass:[HYBPromotionOrderEntryConsumed class] fromJSONDictionary:params error:&error];

if (error) {
    NSLog(@"Couldn't convert JSON to model HYBPromotionOrderEntryConsumed");
    return nil;
}

return object;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
   return @{
@"orderEntryNumber" : @"orderEntryNumber",
@"code" : @"code",
@"quantity" : @"quantity",
@"adjustedUnitPrice" : @"adjustedUnitPrice"
};
}






@end