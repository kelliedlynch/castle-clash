//
//  GameplayLayer.h
//  Castle Clash
//
//  Created by Kellie Lynch on 8/23/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "TurnMenuLayer.h"

@interface GameplayLayer : CCLayer
{
    CCSprite *playerCastleSprite;
    TurnMenuLayer * _tmlayer;
}

- (id)initWithTurnMenu:(TurnMenuLayer *)tmlayer;


@end
