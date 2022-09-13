//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HateAnchovyKitchen.h"
#import "Kitchen.h"
#import "CheeryKitchen.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        HateAnchovyKitchen *hateAnchovyKitchen = [HateAnchovyKitchen new];
        CheeryKitchen *cheeryKitchen = [CheeryKitchen new];
        restaurantKitchen.delegate = hateAnchovyKitchen;
        Pizza *pizaa = [Pizza new];
        [pizaa setPizzaSize:0];
        NSLog(@"%d", [pizaa pizzaSize]);
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSArray *stringArr = [inputString componentsSeparatedByString:@" "];
            NSString *pizzaSizeStr = [stringArr[0] lowercaseString];
            PizzaSize pizzaSize = S;
            if ([pizzaSizeStr isEqual: @"small"]) {
                pizzaSize = S;
            } else if ([pizzaSizeStr isEqual: @"medium"]) {
                pizzaSize = M;
            } else {
                pizzaSize = L;
            }
            NSArray *toppings = [stringArr subarrayWithRange:NSMakeRange(1, stringArr.count - 1)];
            // And then send some message to the kitchen...
            Pizza *orderedPizza = [restaurantKitchen makePizzaWithSize:pizzaSize toppings:toppings];
        }

    }
    return 0;
}

