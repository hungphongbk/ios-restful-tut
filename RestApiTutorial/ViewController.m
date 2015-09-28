//
//  ViewController.m
//  RestApiTutorial
//
//  Created by Trương Phong on 9/28/15.
//  Copyright © 2015 Trương Phong. All rights reserved.
//

#import "ViewController.h"
#import "RestApiManager.h"
#import "MyCustomTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.txtSid.text=@"51202744";
    self->tableData=[NSArray array];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendData:(id)sender {
    RestApiManager* api=[RestApiManager sharedInstance];
    [api makeHTTPGetRequest:self.txtSid.text withOnComplete:^(NSArray* result,NSError* err){
        NSLog(@"%@", result);
        self->tableData=result;
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
    }];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [tableData count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *simpleTableIdentifier = @"CustomViewCell";
    
    MyCustomTableViewCell *cell = (MyCustomTableViewCell*)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    NSDictionary* obj=[tableData objectAtIndex:indexPath.row];
    cell.txtSubjectId.text = [obj objectForKey:@"subjectId"];
    cell.txtSubjectName.text=[obj objectForKey:@"subjectName"];
    NSLog(@"haha");
    return cell;
}
@end
