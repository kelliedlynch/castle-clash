//
//  GameplayScene.m
//  Castle Clash
//
//  Created by Kellie Lynch on 8/23/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "GameplayScene.h"

// Create the main gameplay scene
@implementation GameplayScene

//@synthesize bglayer = _bglayer;
//@synthesize gplayer = _gplayer;
//@synthesize cmlayer = _cmlayer;

- (id)init {
    
    if ((self = [super init])) {
        self.bglayer = [BackgroundLayer node];
        [self addChild:_bglayer z:0];
       
        self.gplayer = [[[GameplayLayer alloc] initWithCastleMenu:self.cmlayer] autorelease];
        //self.gplayer = [GameplayLayer node];
        [self addChild:_gplayer z:1];
        
        //self.cmlayer = [CastleMenuLayer node];
        //[self addChild:_cmlayer z:2];
    
    }
    return self;
}

- (void)dealloc {
    [_gplayer release];
    _gplayer = nil;
    [super dealloc];
}

@end


