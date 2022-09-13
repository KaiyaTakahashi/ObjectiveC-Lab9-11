//
//  CheeryKitchen.m
//  PizzaRestaurant
//
//  Created by Kaiya Takahashi on 2022-09-12.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "CheeryKitchen.h"
#import "DeliveryService.h"

@implementation CheeryKitchen

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setDs:[DeliveryService new]];
    }
    return self;
}

-(BOOL)kitchen:(Kitchen*)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray*) toppings {
    NSLog(@"Enjoy your pizza.");
    return YES;
}
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen*)kitchen {
    return YES;
}
-(void)kitchenDidMakePizza:(Pizza*)pizza {
    [_ds deliverPizza:pizza];
}

@end
