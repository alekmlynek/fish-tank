//
//  fish.m
//  FishBowl
//
//  Created by Alek Mlynek on 2012-12-02.
//  Copyright (c) 2012 Alek Mlynek. All rights reserved.
//

#import "fish.h"
#include <stdlib.h>

@implementation fish

@synthesize name, x, y, top, left, speed, symbol, pos;

- (id) initWithX:(int) X andY: (int) Y {
    
    //Trying to random with variable

    int fish_type = (arc4random() % 4);
    
    NSLog(@"Random Fish %d", fish_type);
    
    x = X;
    y = Y;
    
    switch(fish_type)
    {
        case 0:
            self.name = @"Shark";
            self.symbol = @"S";
            self.speed = 10;
            self.top = FALSE;
            self.left = FALSE;
        break;

        case 1:
            self.name = @"Clownfish";
            self.symbol = @":";
            self.speed=4;
            self.top = TRUE;
            self.left = FALSE;
        break;
            
        case 2:
            self.name = @"Goldfish";
            self.symbol = @"$";
            self.speed=6;
            self.top = FALSE;
            self.left = TRUE;
        break;
            
        case 3:
            self.name = @"Squid";
            self.symbol = @"Q";
            self.speed=15;
            self.top = TRUE;
            self.left = TRUE;
        break;
            
        case 4:
            self.name = @"Lobster";
            self.symbol = @"#";
            self.speed=20;
        break;
    }
    
    NSLog(@"Just bred a %@ ", name);
    
    return self;
}

-(void) setX:(int) X andY:(int) Y
{
    x = X;
    y = Y;
}

-(void) setTop: (BOOL) pTop andLeft:(BOOL) pLeft
{
    top = pTop;
    left = pLeft;
    
}

@end
