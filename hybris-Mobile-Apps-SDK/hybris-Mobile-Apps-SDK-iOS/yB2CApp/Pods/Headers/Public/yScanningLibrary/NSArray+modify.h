//
//  NSArray+modify.h
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

#import <Foundation/Foundation.h>

@interface NSArray (modify)

//strings
- (BOOL)containsString:(NSString *)string;
- (NSArray*)addElement:(NSString *)element;
- (NSArray*)removeElement:(NSString *)element;

//objects
- (NSArray*)addObject:(id)object;
- (NSArray*)removeObject:(id)object;

@end
