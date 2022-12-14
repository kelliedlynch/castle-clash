//
//  GameplayScene.h
//  Castle Clash
//
//  Created by Kellie Lynch on 8/23/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "GameplayLayer.h"
#import "BackgroundLayer.h"
#import "CastleMenuLayer.h"



@interface GameplayScene: CCScene {
    GameplayLayer *_gplayer;
    BackgroundLayer *_bglayer;
    CastleMenuLayer *_cmlayer;
    BOOL showTurnMenu;
}
@property (nonatomic, retain) GameplayLayer *gplayer;
@property (nonatomic, retain) BackgroundLayer *bglayer;
@property (nonatomic, retain) CastleMenuLayer *cmlayer;


@end
