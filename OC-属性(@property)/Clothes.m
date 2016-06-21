//
//  Clothes.m
//  OC-属性(@property)
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Clothes.h"

@implementation Clothes
-(void)dealloc
{
    NSLog(@"Clothes %@ 被释放了...",_color);
    [super dealloc];
}
@end
