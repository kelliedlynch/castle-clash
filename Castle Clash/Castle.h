//
//  Castle.h
//  Castle Clash
//
//  Created by Kellie Lynch on 8/23/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface Castle : CCNode {
    
    int maxWallStrength;
    int currentWallStrength;
    int maxArmySize;
    int currentArmySize;
    
}

@property (nonatomic,assign) CCSprite *castleSprite;

@end
