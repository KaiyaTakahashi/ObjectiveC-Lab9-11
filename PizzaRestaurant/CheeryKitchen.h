//
//  CheeryKitchen.h
//  PizzaRestaurant
//
//  Created by Kaiya Takahashi on 2022-09-12.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"
#import "DeliveryService.h"

NS_ASSUME_NONNULL_BEGIN

@interface CheeryKitchen : NSObject<KitchenDelegate>

@property (nonatomic) DeliveryService *ds;

-(BOOL)kitchen:(Kitchen*)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray*) toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen*)kitchen;
-(void)kitchenDidMakePizza:(Pizza*)pizza;

@end

NS_ASSUME_NONNULL_END
