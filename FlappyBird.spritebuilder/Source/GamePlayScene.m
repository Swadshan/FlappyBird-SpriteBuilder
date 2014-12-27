#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    //[self addObstacle];
    [self addObstacle];
    timeSinceObstacle = 10.0f;
}

-(void)update:(CCTime)delta
{
    // put update code here
    //Aditi Saravanan Developing Game - 2
    character = (Character*)[CCBReader load:@"Character"];
    //[physicsNode addChild:character];
}

// put new methods here
- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    // this will get called every time the player touches the screen
[character flap];
}

@end
