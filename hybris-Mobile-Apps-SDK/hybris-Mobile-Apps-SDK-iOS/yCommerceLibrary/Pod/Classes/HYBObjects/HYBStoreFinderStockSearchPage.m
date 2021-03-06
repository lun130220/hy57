//
// HYBStoreFinderStockSearchPage.m
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

#import "HYBStoreFinderStockSearchPage.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

#import "HYBProduct.h"
#import "HYBPagination.h"
#import "HYBPointOfServiceStock.h"
#import "HYBSort.h"


@implementation HYBStoreFinderStockSearchPage

+ (instancetype)storeFinderStockSearchPageWithParams:(NSDictionary*)params {

NSError *error = nil;
HYBStoreFinderStockSearchPage *object = [MTLJSONAdapter modelOfClass:[HYBStoreFinderStockSearchPage class] fromJSONDictionary:params error:&error];

if (error) {
    NSLog(@"Couldn't convert JSON to model HYBStoreFinderStockSearchPage");
    return nil;
}

return object;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
   return @{
@"sourceLatitude" : @"sourceLatitude",
@"sourceLongitude" : @"sourceLongitude",
@"product" : @"product",
@"pagination" : @"pagination",
@"locationText" : @"locationText",
@"boundWestLongitude" : @"boundWestLongitude",
@"stores" : @"stores",
@"boundNorthLatitude" : @"boundNorthLatitude",
@"sorts" : @"sorts",
@"boundSouthLatitude" : @"boundSouthLatitude",
@"boundEastLongitude" : @"boundEastLongitude"
};
}

+ (NSValueTransformer *)storesJSONTransformer {
return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[HYBPointOfServiceStock class]];
}

+ (NSValueTransformer *)sortsJSONTransformer {
return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[HYBSort class]];
}




+ (NSValueTransformer *)productJSONTransformer {
return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[HYBProduct class]];
}

+ (NSValueTransformer *)paginationJSONTransformer {
return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[HYBPagination class]];
}



@end