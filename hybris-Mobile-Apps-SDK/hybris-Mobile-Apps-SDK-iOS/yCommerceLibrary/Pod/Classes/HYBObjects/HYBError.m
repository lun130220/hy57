//
// HYBError.m
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

#import "HYBError.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"



@implementation HYBError

+ (instancetype)errorWithParams:(NSDictionary*)params {

NSError *error = nil;
HYBError *object = [MTLJSONAdapter modelOfClass:[HYBError class] fromJSONDictionary:params error:&error];

if (error) {
    NSLog(@"Couldn't convert JSON to model HYBError");
    return nil;
}

return object;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
   return @{
@"reason" : @"reason",
@"subject" : @"subject",
@"type" : @"type",
@"message" : @"message",
@"subjectType" : @"subjectType"
};
}






@end