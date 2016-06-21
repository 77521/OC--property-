//
//  Dog.h
//  OC-属性(@property)
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;
#import "Clothes.h"

@interface Dog : NSObject
@property(nonatomic,copy)NSString *dogName;
@property(nonatomic,retain)Person *dormin;
@property(nonatomic,retain)Clothes *clothes;//衣服属性
@end
