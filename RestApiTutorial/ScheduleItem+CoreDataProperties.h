//
//  ScheduleItem+CoreDataProperties.h
//  RestApiTutorial
//
//  Created by Trương Phong on 9/28/15.
//  Copyright © 2015 Trương Phong. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "ScheduleItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface ScheduleItem (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *subject_id;
@property (nullable, nonatomic, retain) NSString *subject_name;

@end

NS_ASSUME_NONNULL_END
