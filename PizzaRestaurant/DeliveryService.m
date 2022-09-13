//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Kaiya Takahashi on 2022-09-13.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "Pizza.h"
#import "DeliveryCar.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setPizzaRecord:[NSMutableArray new]];
    }
    return self;
}

-(void)deliverPizza:(Pizza*)pizza {
    [_pizzaRecord addObject:pizza];
    [[DeliveryCar new] deliverPizza:pizza];
    for (int i = 0; i < _pizzaRecord.count; i++) {
        NSString *toppings = [[_pizzaRecord[i] toppings] componentsJoinedByString:@" "];
        NSString *size = @"";
        switch ([_pizzaRecord[i] pizzaSize]) {
            case 0:
                size = @"S";
                break;
            case 1:
                size = @"M";
                break;
            case 2:
                size = @"L";
            default:
                break;
        }
        NSLog(@"%@ pizza(%@ size).", toppings, size);
    }
}


@end
