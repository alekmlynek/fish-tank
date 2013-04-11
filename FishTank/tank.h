//
//  tank.h
//  FishBowl
//
//  Created by Alek Mlynek on 2012-12-02.
//  Copyright (c) 2012 Alek Mlynek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface tank : NSObject

{
    int              width;
    int              height;
    NSMutableArray   *fishPool;
    NSMutableArray   *tankCols;
    NSMutableArray   *tankRows;
}

- (id) init;
- (void) addFish: (int)count;
- (void) dumpTank;
- (void) moveFish;
- (void) drawTankX: (int)X andY:(int)Y withChar:(NSString*) obj;

@property(assign) int width;
@property(assign) int height;
@property(readwrite, retain) NSMutableArray *fishPool;

@end
