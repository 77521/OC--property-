//
//  Clothes.h
//  OC-属性(@property)
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Clothes : NSObject
@property(nonatomic,retain)NSString *color;//@property 在这里是指clothes类里面专用
@property(nonatomic,assign)double price;
@end
