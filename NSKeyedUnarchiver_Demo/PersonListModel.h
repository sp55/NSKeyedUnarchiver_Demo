//
//  PersonListModel.h
//  NSKeyedUnarchiver_Demo
//
//  Created by admin on 16/6/23.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonListModel : NSObject<NSCoding>


@property(strong,nonatomic)NSArray *personList;

@end
