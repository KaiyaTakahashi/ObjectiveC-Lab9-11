//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"
#import "HateAnchovyKitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    if ([_delegate isKindOfClass:[HateAnchovyKitchen class]]) {
        if ([_delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
            [_delegate kitchenDidMakePizza:[[Pizza alloc] init:toppings pizzaSize:size]];
            return [[Pizza alloc] init:toppings pizzaSize:size];
        }
        return nil;
    } else {
        [_delegate kitchenDidMakePizza:[[Pizza alloc] init:toppings pizzaSize:L]];
        return [[Pizza alloc] init:toppings pizzaSize:L];
    }
}

@end
