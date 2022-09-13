//
//  HateAnchovyKitchen.m
//  PizzaRestaurant
//
//  Created by Kaiya Takahashi on 2022-09-12.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "HateAnchovyKitchen.h"
#import "Pizza.h"
#import "DeliveryService.h"

@implementation HateAnchovyKitchen

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setDs:[DeliveryService new]];
    }
    return self;
}

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return ![toppings containsObject:@"anchovy"];
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

-(void)kitchenDidMakePizza:(Pizza*)pizza {
    [_ds deliverPizza:pizza];
}

@end
