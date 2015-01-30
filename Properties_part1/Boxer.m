//
//  Boxer.m
//  Properties_part1
//
//  Created by Роман Приискалов on 30/01/15.
//  Copyright (c) 2015 Роман Приискалов. All rights reserved.
//

#import "Boxer.h"

@interface Boxer ()     // категория, расширяющая класс  (Инкапсуляция)
    @property (assign, nonatomic) NSInteger nameCount; // только внутренняя переменная
@end


@implementation Boxer
@synthesize name = _name;   // теперь все время видно внутренню name как _name


- (instancetype)init // инициализатор
{
    self = [super init];
    if (self) {
        self.nameCount = 0;
    }
    return self;
}

- (void) setName:(NSString *)inputName{       //переопределение set через iVar
    NSLog(@"setter is called");
    _name = inputName;
}

- (NSString*) name{   // переопределение get
    
    self.nameCount++;
    NSLog(@"getter for name is called %ld times",  (long)self.nameCount);
    
    return _name;
}

- (NSInteger) age{
    
    NSLog(@"getter for age is called"); 
    return _age;
}

-(NSInteger) HowOldAreYou{
    return self.age;
}

@end
