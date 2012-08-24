//
//  GameplayScene.m
//  Castle Clash
//
//  Created by Kellie Lynch on 8/23/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "GameplayScene.h"
//#import "BackgroundLayer.h"
//#import "TurnMenuLayer.h"


// Create a scene for the Main Menu screen
@implementation GameplayScene

@synthesize bglayer = _bglayer;
@synthesize gplayer = _gplayer;
@synthesize tmlayer = _tmlayer;

- (id)init {
    
    if ((self = [super init])) {
        self.bglayer = [BackgroundLayer node];
        [self addChild:_bglayer z:0];
       
        self.tmlayer = [TurnMenuLayer node];
        [self addChild:_tmlayer z:2];

        self.gplayer = [[[GameplayLayer alloc] initWithTurnMenu:self.tmlayer] autorelease];
        //self.gplayer = [GameplayLayer node];
        [self addChild:_gplayer z:1];
    
    }
    return self;
}

- (void)dealloc {
    [_gplayer release];
    _gplayer = nil;
    [super dealloc];
}

@end


