//
//  TurnMenuLayer.m
//  Castle Clash
//
//  Created by Kellie Lynch on 8/23/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "CastleMenuLayer.h"

@implementation CastleMenuLayer

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super's" return value
	if( (self=[super init] )) {
            
            
            CGSize size = [CCDirector sharedDirector].winSize;
            
            CCSprite *menuBackground = [CCSprite spriteWithFile:@"menu-bg.png"];
            
            menuBackground.position = ccp( size.width/2, size.height/2);
            
            [self addChild:menuBackground z:0 tag:1];
            

              
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

/*- (void)showTurnMenu:(BOOL)show {
    
    if ([self getChildByTag:1]) {
        [self removeChildByTag:1 cleanup:YES];    

    } else {

        
        CGSize size = [CCDirector sharedDirector].winSize;
        
        CCSprite *menuBackground = [CCSprite spriteWithFile:@"menu-bg.png"];
        
        menuBackground.position = ccp( size.width/2, size.height/2);
        
        [self addChild:menuBackground z:0 tag:1];
        
    }
 
}*/


@end
