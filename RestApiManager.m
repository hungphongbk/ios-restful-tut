//
//  RestApiManager.m
//  RestApiTutorial
//
//  Created by Trương Phong on 9/28/15.
//  Copyright © 2015 Trương Phong. All rights reserved.
//

#import "RestApiManager.h"

@implementation RestApiManager
+(RestApiManager*)sharedInstance{
    static RestApiManager *sharedInst=nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        sharedInst=[[self alloc] init];
    });
    return sharedInst;
}
-(id)init{
    if(self=[super init]){
        self->url=@"http://hungphongbk.tmp-technology.com/rest-tutorial/index.php/schedule/";
    }
    return self;
}
-(void)dealloc{
    // never called
}

-(void)makeHTTPGetRequest:(NSString *)sid withOnComplete:(void (^)(NSArray *, NSError *))onComplete{
    // concat base url with sid parameter
    NSURL* absUrl=[[NSURL alloc] initWithString: [self->url stringByAppendingString:sid]];
    NSMutableURLRequest* request=[[NSMutableURLRequest alloc] initWithURL:absUrl];
    NSURLSession* urlsession=[NSURLSession sharedSession];
    NSURLSessionDataTask* task=[urlsession dataTaskWithRequest:request completionHandler:^(NSData* data,NSURLResponse* response,NSError* err){
        NSError *jsonErr = nil;
        NSDictionary *json=[NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonErr];
        NSArray *timetables=[json objectForKey:@"timetable"];
        onComplete(timetables,err);
    }];
    [task resume];
}
@end
