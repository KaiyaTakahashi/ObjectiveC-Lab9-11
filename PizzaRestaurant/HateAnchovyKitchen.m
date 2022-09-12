//
//  HateAnchovyKitchen.m
//  PizzaRestaurant
//
//  Created by Kaiya Takahashi on 2022-09-12.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "HateAnchovyKitchen.h"

@implementation HateAnchovyKitchen

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return ![toppings containsObject:@"anchovy"];
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

-(void)kitchenDidMakePizza:(id)pizza {
    NSString *toppings = [[pizza toppings] componentsJoinedByString:@" "];
    NSString *size = @"";
    switch ([pizza pizzaSize]) {
        case 0:
            size = @"S";
            break;
        case 1:
            size = @"M";
        case 2:
            size = @"L";
        default:
            break;
    }
    NSLog(@"%@ pizza(%@ size) was made.", toppings, size);
}

@end
