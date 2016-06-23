//
//  PersonModel.h
//  NSKeyedUnarchiver_Demo
//
//  Created by admin on 16/6/23.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonModel : NSObject<NSCoding>

@property(copy,nonatomic)NSString *name;
@property(copy,nonatomic)NSString *age;
@end
