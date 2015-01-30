//
//  Boxer.h
//  Properties_part1
//
//  Created by Роман Приискалов on 30/01/15.
//  Copyright (c) 2015 Роман Приискалов. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Boxer : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) float height;
@property (assign, nonatomic) float weight;


-(NSInteger) HowOldAreYou;

@end
