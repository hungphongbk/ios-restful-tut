//
//  RestApiManager.h
//  RestApiTutorial
//
//  Created by Trương Phong on 9/28/15.
//  Copyright © 2015 Trương Phong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RestApiManager : NSObject {
    @private
    NSString *url;
    
}
+(RestApiManager*)sharedInstance;
-(void)makeHTTPGetRequest:(NSString*) sid withOnComplete:(void(^)(NSArray *result,NSError* error))onComplete;
@end
