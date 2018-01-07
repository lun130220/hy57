//
//  HYBRestManager.m
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

#import "HYBRestManager.h"
#import "HYBConstants.h"
#import "DDLog.h"

@interface HYBRestManager ()

@property(nonatomic) AFHTTPRequestOperationManager *restManager;

@end

@implementation HYBRestManager

#pragma mark --

- (instancetype)init  {
    
    if(self = [super init]) {
        _restManager = [[AFHTTPRequestOperationManager alloc] initWithBaseURL:nil];
    }
    
    return self;
}

- (void)injectAuthorizationHeader:(NSString*)authorizationHeader {
    
    if(_restManager) {
        DDLogDebug(@"injectAuthorizationHeader %@",authorizationHeader);
        [_restManager.requestSerializer setValue:authorizationHeader forHTTPHeaderField:@"Authorization"];
        
        AFSecurityPolicy *policy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
        policy.allowInvalidCertificates = YES;
        _restManager.securityPolicy = policy;
    } else {
        DDLogDebug(@"!!! RestEngine not set !!!");
    }
}

- (void)discardAuthorizationHeader {
    
    if(_restManager) {
        DDLogDebug(@"discardAuthorizationHeader");
        [_restManager.requestSerializer clearAuthorizationHeader];
       
    } else {
        DDLogDebug(@"!!! RestEngine not set !!!");
    }
}

#pragma mark REST shortcuts

- (void)GET:(NSString*)url
    success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
    failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure {
    
    [self GET:url withParams:nil success:success failure:failure];
}

- (void)GET:(NSString*)url withParams:(NSDictionary*)params
    success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
    failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure {
    
    DDLogDebug(@"url %@",url);
    if(params) DDLogDebug(@"params %@",[params description]);
    
    //set expected response to JSON
    [_restManager setResponseSerializer:[AFJSONResponseSerializer serializer]];
    
    [_restManager GET:url
           parameters:params
              success:success
              failure:failure];
}

- (void)GETIMAGE:(NSString*)url
    success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
    failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure {
    
    [self GETIMAGE:url withParams:nil success:success failure:failure];
}

- (void)GETIMAGE:(NSString*)url withParams:(NSDictionary*)params
    success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
    failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure {
    
    DDLogDebug(@"url %@",url);
    if(params) DDLogDebug(@"params %@",[params description]);
    
    [_restManager setResponseSerializer:[AFImageResponseSerializer serializer]];

    [_restManager GET:url
           parameters:params
              success:success
              failure:failure];
}

- (void)POST:(NSString*)url
     success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
     failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure {
    
    [self POST:url withParams:nil success:success failure:failure];

}

- (void)POST:(NSString*)url withParams:(NSDictionary*)params
     success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
     failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure {
    
    DDLogDebug(@"url %@",url);
    if(params) DDLogDebug(@"params %@",[params description]);
    
    //set expected response to JSON
    [_restManager setResponseSerializer:[AFJSONResponseSerializer serializer]];
    
    [_restManager POST:url
           parameters:params
              success:success
              failure:failure];
}

- (void)DELETE:(NSString*)url
       success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
       failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure {
    
    [self DELETE:url withParams:nil success:success failure:failure];
}

- (void)DELETE:(NSString*)url withParams:(NSDictionary*)params
       success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
       failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure {
    
    DDLogDebug(@"url %@",url);
    if(params) DDLogDebug(@"params %@",[params description]);
    
    //set expected response to JSON
    [_restManager setResponseSerializer:[AFJSONResponseSerializer serializer]];
    
    [_restManager DELETE:url
            parameters:params
               success:success
               failure:failure];
}

- (void)PATCH:(NSString*)url
      success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
      failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure {
    
    [self PATCH:url withParams:nil success:success failure:failure];
}

- (void)PATCH:(NSString*)url withParams:(NSDictionary*)params
      success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
      failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure {
    
    DDLogDebug(@"url %@",url);
    if(params) DDLogDebug(@"params %@",[params description]);
    
    //set expected response to JSON
    [_restManager setResponseSerializer:[AFJSONResponseSerializer serializer]];
    
    [_restManager PATCH:url
              parameters:params
                 success:success
                 failure:failure];
}

- (void)PUT:(NSString*)url
    success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
    failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure {
    
    [self PUT:url withParams:nil success:success failure:failure];
}

- (void)PUT:(NSString*)url withParams:(NSDictionary*)params
    success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
    failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure {
    
    DDLogDebug(@"url %@",url);    
    if(params) DDLogDebug(@"params %@",[params description]);
    
    //set expected response to JSON
    [_restManager setResponseSerializer:[AFJSONResponseSerializer serializer]];
    
    [_restManager PUT:url
             parameters:params
                success:success
                failure:failure];
}

- (void)HEAD:(NSString*)url
    success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
    failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure {
    
    [self HEAD:url withParams:nil success:success failure:failure];
}

- (void)HEAD:(NSString*)url withParams:(NSDictionary*)params
    success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
    failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure {
    
    DDLogDebug(@"url %@",url);
    if(params) DDLogDebug(@"params %@",[params description]);
    
    //set expected response to JSON
    [_restManager setResponseSerializer:[AFJSONResponseSerializer serializer]];
    
    [_restManager HEAD:url
           parameters:params
               success:^(AFHTTPRequestOperation *operation) {
                   success(operation, operation.responseObject);
               }
              failure:failure];
}

@end
