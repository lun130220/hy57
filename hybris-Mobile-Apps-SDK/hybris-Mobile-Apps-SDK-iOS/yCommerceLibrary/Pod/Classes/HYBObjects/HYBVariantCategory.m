//
// HYBVariantCategory.m
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

#import "HYBVariantCategory.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"



@implementation HYBVariantCategory

+ (instancetype)variantCategoryWithParams:(NSDictionary*)params {

NSError *error = nil;
HYBVariantCategory *object = [MTLJSONAdapter modelOfClass:[HYBVariantCategory class] fromJSONDictionary:params error:&error];

if (error) {
    NSLog(@"Couldn't convert JSON to model HYBVariantCategory");
    return nil;
}

return object;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
   return @{
@"name" : @"name",
@"hasImage" : @"hasImage",
@"priority" : @"priority"
};
}






@end