//
// HYBVariantOption.m
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

#import "HYBVariantOption.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

#import "HYBPrice.h"
#import "HYBVariantOptionQualifier.h"
#import "HYBStock.h"


@implementation HYBVariantOption

+ (instancetype)variantOptionWithParams:(NSDictionary*)params {
    
    NSError *error = nil;
    HYBVariantOption *object = [MTLJSONAdapter modelOfClass:[HYBVariantOption class] fromJSONDictionary:params error:&error];
    
    if (error) {
        NSLog(@"Couldn't convert JSON to model HYBVariantOption");
        return nil;
    }
    
    return object;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"code" : @"code",
             @"priceData" : @"priceData",
             @"variantOptionQualifiers" : @"variantOptionQualifiers",
             @"stock" : @"stock",
             @"url" : @"url"
             };
}

+ (NSValueTransformer *)variantOptionQualifiersJSONTransformer {
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[HYBVariantOptionQualifier class]];
}




+ (NSValueTransformer *)priceDataJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[HYBPrice class]];
}

+ (NSValueTransformer *)stockJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[HYBStock class]];
}



@end