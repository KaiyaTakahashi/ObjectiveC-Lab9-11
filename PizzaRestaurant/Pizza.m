//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Kaiya Takahashi on 2022-09-09.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)init:(NSArray*)toppings pizzaSize:(PizzaSize)pizzaSize
{
    self = [super init];
    if (self) {
        [self setToppings:toppings];
        [self setPizzaSize:pizzaSize];
    }
    return self;
}

@end
