//
//  fish.h
//  FishBowl
//
//  Created by Alek Mlynek on 2012-12-02.
//  Copyright (c) 2012 Alek Mlynek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface fish : NSObject
{
    int x;
    int y;
    NSString* name;
    int type;
    BOOL top;
    BOOL left;
    int speed;
    int posMoved;
    NSString* symbol;
}

@property (assign, readwrite) int x;
@property (assign, readwrite) int y;
@property (readwrite, retain) NSString *name;
@property (readwrite) BOOL top;
@property (readwrite) BOOL left;
@property (readwrite) int speed;
@property (readwrite) int pos;
@property (readwrite, retain) NSString *symbol;

- (id) initWithX: (int) X andY: (int) Y;
-(void) setX:(int) X andY:(int) Y;
-(void) setTop: (BOOL) pTop andLeft:(BOOL) pLeft;

@end
