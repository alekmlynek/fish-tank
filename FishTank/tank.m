//
//  tank.m
//  FishBowl
//
//  Created by Alek Mlynek on 2012-12-02.
//  Copyright (c) 2012 Alek Mlynek. All rights reserved.
//

#import "tank.h"
#include "fish.h"

@implementation tank

@synthesize width, height, fishPool;

-(id) init
{
    //Should tank be random?
    width   = 40;
    height  = 20;
    
    int i;
    int j;
    
    tankCols = [[NSMutableArray alloc] initWithCapacity:width];
    
    for(i = 0; i <= width; i++)
    {
        [tankCols insertObject: [[NSMutableArray alloc] initWithCapacity:height] atIndex:i];
        for(j = 0; j <= height; j++)
        {
            tankCols[i][j] = @"*"; //Init and set all at the same time.
        }
    }
    
    NSLog(@"Created our tank %d %d", width, height);
    
    fishPool = [[NSMutableArray alloc] init];
    
    return self;
}

- (void) addFish:(int)count
{
    int rX = 0;
    int rY = 0;
    int i = 0;

    for(i=0; i < count; i++)
    {
        rX = (arc4random() % width);
        rY = (arc4random() % height);
        [fishPool addObject: [[fish alloc] initWithX: rX andY: rY]];
        
        NSLog(@"CountX: %@", [NSNumber numberWithInteger:[fishPool count]]);
    }
}

- (void) moveFish
{
    int i = 0;
    
    

    //NSLog(@"Count: %@", [NSNumber numberWithInteger:[fishPool count]] );
    
    for(i=0; i < [fishPool count]; i++)
    {

        fish *fishSelector = [fishPool objectAtIndex:i];
        

        
        if([fishSelector pos] == [fishSelector speed])
        {
            [fishSelector setPos:0];
            int curX  = [fishSelector x];
            int curY  = [fishSelector y];
            BOOL fishTop   = [fishSelector top];
            BOOL fishLeft  = [fishSelector left];
        
            [self drawTankX:curX andY:curY withChar:@"*"];
        
            if([fishSelector top])
            {
                curY = curY + 1;
                if(curY >= height)
                {
                    fishTop = FALSE;
                }
            }
            else
            {
                curY = curY - 1;
                if(curY <= 0)
                {
                    fishTop = TRUE;
                }
            }
            
            if([fishSelector left])
            {
                curX =  curX + 1;
                if( curX >= width)
                {
                    fishLeft = FALSE;
                }
            }
            else
            {
                curX =  curX - 1;
                if( curX <= 0)
                {
                    fishLeft = TRUE;
                }
            }
        
            [fishSelector setX:curX andY:curY];
            [fishSelector setTop:fishTop andLeft:fishLeft];
        
            [self drawTankX:curX andY:curY withChar: [fishSelector symbol]];
        
            // NSLog(@"Moving %@, %i %i \n", [fishSelector name],  curX,  curY);
        }
        else
        {
            [fishSelector setPos: [fishSelector pos] + 1];
        }
    }
    

}

-(void) drawTankX:(int)X andY:(int)Y withChar:(NSString*) sym
{
    //system("clear"); //clear console for display
    //Instead of printing to the log line by line, lets build an array and then display it once.
    //[[tankCols objectAtIndex:X] replaceObjectAtIndex:Y withObject:sym];
    tankCols[X][Y] = sym;
    
}

-(void) dumpTank
{
    //system("clear");
    NSMutableString *row = [[NSMutableString alloc] init];

    int i;
    int j;
            [row appendString: @"\n\n\n\n\n\n\n\n\n\n\n\n"];
    for(i = 0; i < height; i++)
    {
        for(j = 0; j < width; j++)
        {
            [row appendString: tankCols[j][i]];
            
        }
        [row appendString: @"\n"];

        
    }
    NSLog(@"%@\r", row);
    
    
    
}

@end
