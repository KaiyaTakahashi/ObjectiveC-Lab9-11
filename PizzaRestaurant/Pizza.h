//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Kaiya Takahashi on 2022-09-09.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject

typedef NS_ENUM(int, PizzaSize) {
    S,
    M,
    L,
};

- (instancetype)init:(NSArray*)toppings pizzaSize:(PizzaSize)pizzaSize;

@property (nonatomic) NSArray *toppings;
@property (nonatomic) PizzaSize pizzaSize;

@end

NS_ASSUME_NONNULL_END
