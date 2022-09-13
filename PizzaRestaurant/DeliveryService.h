//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Kaiya Takahashi on 2022-09-13.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryService : NSObject

@property (nonatomic) NSMutableArray<Pizza*> *pizzaRecord;
@property (nonatomic) DeliveryCar *car;

-(void)deliverPizza:(Pizza*)pizza;

@end

NS_ASSUME_NONNULL_END
