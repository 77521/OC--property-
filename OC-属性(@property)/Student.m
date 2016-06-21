//
//  Student.m
//  OC-属性(@property)
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)dealloc
{
    NSLog(@"身高为%g的学生被释放了...",_height);
    [super dealloc];//将父类进行释放
}
-(NSString *)description
{
    return [NSString stringWithFormat:@"%@,%d,%@,%@,%g",_name,self.age,self.address,self.sex,_height];//_name因为{}中成员变量，所以可以直接使用。myAge不可使用因为他只是Person.m内部的私有变量。_age,_address...也不可使用 因为他们也是在Person.m里面的私有变量
    //self.变量和_变量的区别：self.会调用setter或getter方法，但是_变量仅仅只是一个变量！
}
@end
