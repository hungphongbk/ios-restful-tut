//
//  MyCustomTableViewCell.h
//  RestApiTutorial
//
//  Created by Trương Phong on 9/28/15.
//  Copyright © 2015 Trương Phong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *txtSubjectId;
@property (weak, nonatomic) IBOutlet UILabel *txtSubjectName;

@end
