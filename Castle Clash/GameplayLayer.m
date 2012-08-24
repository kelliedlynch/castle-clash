//
//  GameplayLayer.m
//  Castle Clash
//
//  Created by Kellie Lynch on 8/23/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "GameplayLayer.h"

// GameplayLayer implementation
@implementation GameplayLayer

// on "init" you need to initialize your instance
-(id) initWithTurnMenu:(TurnMenuLayer *)tmlayer
//-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super's" return value
	if( (self=[super init] )) {
		
        _tmlayer = tmlayer;
        
        
        self.isTouchEnabled = YES;
        
		// ask director for the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
        
		//
        // Game Title
        //
        
        // Create the label
		CCLabelTTF *label = [CCLabelTTF labelWithString:@"Castle Clash" fontName:@"Marker Felt" fontSize:64];
        
		// position the label on the center of the screen
		label.position =  ccp( size.width /2 , size.height - label.contentSize.height /2 );
		
		// add the label as a child to this Layer
		[self addChild: label];
        
        //
        // Your Castle
        //
        
        playerCastleSprite = [CCSprite spriteWithFile:@"Wall Block Tall.png"];
        [playerCastleSprite setPosition:ccp( 100 , 150 )];

        [self addChild:playerCastleSprite];
        
	}
	return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	
	// don't forget to call "super dealloc"
	[super dealloc];
}

- (void)ccTouchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
	for( UITouch *touch in touches ) {
		CGPoint location = [touch locationInView: [touch view]];
        
		location = [[CCDirector sharedDirector] convertToGL: location];
        
        //CCSprite *playerCastleSprite;
        
        if (CGRectContainsPoint([playerCastleSprite boundingBox], location)) {
            
            // open menu
            [_tmlayer showTurnMenu:YES];
            
            
            
            /*CCSprite *newSprite = [CCSprite spriteWithFile:@"Wall Block Tall.png"];
             [newSprite setPosition:ccp( 500 , 150 )];
             //CCSprite *pcs = playerCastleSprite;
             [self addChild:newSprite];
             */
        }
        
	}
}


@end

