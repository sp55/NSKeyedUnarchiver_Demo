//
//  ViewController.m
//  NSKeyedUnarchiver_Demo
//
//  Created by admin on 16/6/23.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ViewController.h"
#import "PersonModel.h"
#import "PersonListModel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    PersonModel *person101 = [[PersonModel alloc] init];
    person101.age = @"20";
    person101.name = @"zhangsan";
    
    PersonModel *person102 = [[PersonModel alloc] init];
    person102.age = @"22";
    person102.name = @"lisi";
    
    
    
    
    PersonListModel *personList101 = [[PersonListModel alloc] init];
    personList101.personList =@[person101,person102];
    
    
    NSArray *pathsArr = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [[pathsArr objectAtIndex:0] stringByAppendingString:@"/Person"];
//    NSLog(@"path=%@",path);
//    [NSKeyedArchiver archiveRootObject:person101 toFile:path];
    [NSKeyedArchiver archiveRootObject:personList101 toFile:path];

    
    
//    PersonModel *person201 = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
//    if (person201) {
//        NSLog(@"名字->%@\n年龄->%@\n",person201.name,person201.age);
//    }
    
    PersonListModel *personList201 = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    if ([personList201.personList count]) {

        for (PersonModel *pModel in personList201.personList) {
            //用数组的形式归档
            NSLog(@"名字%@\n年龄%@\n",pModel.name,pModel.age);
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
