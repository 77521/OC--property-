//
//  Person.h
//  OC-属性(@property)
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

//在MRC中，属性(合成存取器)的默认修饰词是 assign
//assign 弱引用，不会增加引用计数，一般用于基本数据类型
//retain 强引用 会增加引用计数,一般用于MRC中的对象
//copy  强引用，会增加引用计数 一般用于字符串
//strong 强引用 会增加引用计数 一般用于ARC，等同于retain
//weak 弱引用 不会增加引用计数 一般用于ARC 一般用于UI中的控件

@interface Person : NSObject
{
    NSString *_name;
//    int _age;
//    NSString *_sex;
//    NSString *address;
}//在引入属性之后，成员变量可以省略4
-(void)setName:(NSString *)name;
-(NSString *)name;
@property(nonatomic)int age;//assign为默认，可以省略  //@property 编译器指令  会自动生成setter 和getter方法（默认)  @property 作用后在.m 中自动生成的私有属性！外界不可访问  只供本对象、方法 进行使用
@property(nonatomic,copy)NSString *sex;
@property(nonatomic,retain)NSString *address;
@property(nonatomic,assign)Dog *dog;//循环引用导致两个无法释放，需要将其中一个改为弱引用即可
@end
