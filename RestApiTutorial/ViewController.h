//
//  ViewController.h
//  RestApiTutorial
//
//  Created by Trương Phong on 9/28/15.
//  Copyright © 2015 Trương Phong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    NSArray* tableData;
}
@property (weak, nonatomic) IBOutlet UITextField *txtSid;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)sendData:(id)sender;
@end

