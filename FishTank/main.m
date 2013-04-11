//
//  main.m
//  FishTank
//
//  Created by Alek Mlynek on 2012-12-02.
//  Copyright (c) 2012 Alek Mlynek. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "fish.h"
#include "tank.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        

        tank *fishTank = [[tank alloc] init];
        [fishTank addFish: 5];
        
        int i = 0;

        
        for(i = 0; i < 10000; i++)
        {
            if(i % 10 == 0)
            {
                [fishTank moveFish];
                //NSLog(@"Moved fish");
            }
            [fishTank dumpTank];
        }
        
        //NSLog(@"Hello, World!");
    }
    return 0;
}

