//
//  PersonModel.m
//  NSKeyedUnarchiver_Demo
//
//  Created by admin on 16/6/23.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "PersonModel.h"

@implementation PersonModel



//归档 实际上就是将当前类的属性编码转化为NSData类型
-(void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.age forKey:@"age"];

//    NSLog(@"执行了PersonModel归档的方法");
}
//反归档 因为归档过程中，我们是将当前类转换为NSData类型，并储存到某个文件中当我们取出来的时候
-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self=[super init]) {
        //将刚才编码为NSData类型的属性，又通过解码方式变回原来的类型，上面编码过程中，所赋给的key值为何种名称，底下解码得对应上。
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.age= [aDecoder decodeObjectForKey:@"age"];

    }
//    NSLog(@"执行了PersonModel反归档的方法");
    return self;
}

@end
