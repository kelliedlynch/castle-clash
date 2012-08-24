//
//  TurnMenuLayer.m
//  Castle Clash
//
//  Created by Kellie Lynch on 8/23/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "TurnMenuLayer.h"

@implementation TurnMenuLayer

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super's" return value
	if( (self=[super init] )) {
        
      
              
	}
	return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	
	// don't forget to call "super dealloc"
	[super dealloc];
}

- (void)draw
{

}

- (void)showTurnMenu:(BOOL)show {
    
    CGSize size = [CCDirector sharedDirector].winSize;
    
    CCSprite *menuBackground = [CCSprite spriteWithFile:@"menu-bg.png"];
    
    menuBackground.position = ccp( size.width/2, size.height/2);
    
    [self addChild:menuBackground];
     
 
}


@end
