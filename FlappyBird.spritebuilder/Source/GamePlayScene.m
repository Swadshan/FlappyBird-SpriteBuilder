#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    //[self addObstacle];
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
   timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta
{
    // put update code here
    //Aditi Saravanan Developing Game - 2
   /* character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    */
    
    // Increment the time since the last obstacle was added
    timeSinceObstacle += delta; // delta is approximately 1/60th of a second
    
    // Check to see if two seconds have passed
    if (timeSinceObstacle > 2.0f)
    {
        // Add a new obstacle
        [self addObstacle];
        
        // Then reset the timer.
        timeSinceObstacle = 0.0f;
    }
}

// put new methods here
//aditi and saravanan
- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    // this will get called every time the player touches the screen
[character flap];
}

@end
