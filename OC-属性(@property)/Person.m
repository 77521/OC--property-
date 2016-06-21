 //
//  Person.m
//  OC-属性(@property)
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Person.h"

@implementation Person
//@synthesize的格式： @synthesize 属性名=你想要设置的私有变量的名字
@synthesize age=myAge,sex=_sex;//在Xcode5及之后就可以省略！
//自己写的setter和getter
-(void)setName:(NSString *)name
{
    if (_name!=name)
    {
        [_name release];
        _name=[name retain];
    }
}
-(NSString *)name
{
    return _name;
}
//重写
-(NSString *)description
{
    return [NSString stringWithFormat:@"name:%@,%d,%@,%@",_name,myAge,_sex,_address];//_age....是@property作用后在.m（实现[方法，属性]）中自动生成的私有属性！外界不可访问!
}
-(void)dealloc
{
    NSLog(@"person:%@被释放了...",_name);
    //释放在属性中强引用的对象
    [_name release];
    [_address release];
    [_sex release];
//    [_dog release];//如果是retain,必须释放
    [super dealloc];
}
@end
