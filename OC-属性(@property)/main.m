//
//  main.m
//  OC-属性(@property)
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1=[[[Person alloc] init] autorelease];
        [p1 setName:@"小明"];
        //@property自动生成的setter方法
        [p1 setAge:21];
        //@property自动生成的点语法
        p1.address=@"郑州";
        p1.sex=@"男";
        NSLog(@"%@,%d,%@,%@",[p1 name],[p1 age],p1.address,p1.sex);//@property自动生成getter方法和点语法
        NSLog(@"p1==%@",p1);
        
        //复合
        Dog *d1=[[[Dog alloc] init] autorelease];
        [d1 setDogName:@"金毛"];
        [p1 setDog:d1];
        Dog *d2=[[[Dog alloc] init] autorelease];
        [d2 setDogName:@"哈士奇"];
        [p1 setDog:d2];//是否会释放d1
//
        [d1 setDormin:p1];
        Person *p2=[[[Person alloc] init] autorelease];
        [p2 setName:@"小李"];
        [d1 setDormin:p2];
//
//        //继承
        Student *s1=[[Student alloc] init];
        [s1 setName:@"学生"];
        [s1 setAge:18];
        [s1 setSex:@"女"];
        [s1 setAddress:@"郑州"];
        [s1 setHeight:178];
        NSLog(@"s1=%@,%d,%@,%@,%g",s1.name,s1.age,s1.address,s1.sex,s1.height);
        NSLog(@"s1>>>>%@",s1);
        [s1 release];
        
        Clothes *c1=[[Clothes alloc] init];
        [c1 setColor:@"红色"];
        [c1 setPrice:180];
        //把衣服属性设置给狗
        [p1.dog setClothes:c1];//p1.dog必须先分配内存，否则无效，p1.dog设置的是哪一条狗，则就相当于d1或d2...
        [c1 release];
    }
    return 0;
}
