//
// HYBFacet.m
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

#import "HYBFacet.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

#import "HYBFacetValue.h"


@implementation HYBFacet

+ (instancetype)facetWithParams:(NSDictionary*)params {

NSError *error = nil;
HYBFacet *object = [MTLJSONAdapter modelOfClass:[HYBFacet class] fromJSONDictionary:params error:&error];

if (error) {
    NSLog(@"Couldn't convert JSON to model HYBFacet");
    return nil;
}

return object;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
   return @{
@"visible" : @"visible",
@"values" : @"values",
@"name" : @"name",
@"priority" : @"priority",
@"category" : @"category",
@"topValues" : @"topValues",
@"multiSelect" : @"multiSelect"
};
}

+ (NSValueTransformer *)valuesJSONTransformer {
return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[HYBFacetValue class]];
}

+ (NSValueTransformer *)topValuesJSONTransformer {
return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[HYBFacetValue class]];
}






@end