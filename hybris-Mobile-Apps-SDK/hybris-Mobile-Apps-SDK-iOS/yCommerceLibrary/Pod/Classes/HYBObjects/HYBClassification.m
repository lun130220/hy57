//
// HYBClassification.m
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

#import "HYBClassification.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

#import "HYBFeature.h"


@implementation HYBClassification

+ (instancetype)classificationWithParams:(NSDictionary*)params {

NSError *error = nil;
HYBClassification *object = [MTLJSONAdapter modelOfClass:[HYBClassification class] fromJSONDictionary:params error:&error];

if (error) {
    NSLog(@"Couldn't convert JSON to model HYBClassification");
    return nil;
}

return object;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
   return @{
@"features" : @"features",
@"code" : @"code",
@"name" : @"name"
};
}

+ (NSValueTransformer *)featuresJSONTransformer {
return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[HYBFeature class]];
}






@end