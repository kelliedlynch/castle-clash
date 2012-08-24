//
//  BackgroundLayer.m
//  Castle Clash
//
//  Created by Kellie Lynch on 8/23/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "BackgroundLayer.h"

@implementation BackgroundLayer

-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super's" return value
	if( (self=[super init] )) {
        
        // ask director for the window size
		CGSize winsize = [[CCDirector sharedDirector] winSize];
        
        CCSprite *bg = [CCSprite spriteWithFile:@"background-ipad.png"];
        
        bg.position = ccp( winsize.width / 2 , winsize.height / 2 );
        [self addChild:bg z:0];
    }
    
    return self;
}

-(void) dealloc
{
    //[bg release];
    
    [super dealloc];
}

@end
