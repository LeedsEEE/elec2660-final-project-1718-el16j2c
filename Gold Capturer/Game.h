//
//  Game.h
//  Gold Collector
//
//  Created by Jiaxing Chen on 2017/11/16.
//  Copyright © 2017年 Jiaxing Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

int LiveDecrease;
int ScoreIncrease;
int scoreinteger;

@interface Game : UIViewController{
    
    __weak IBOutlet UILabel *Score;
    __weak IBOutlet UILabel *LivesLeft;
    __weak IBOutlet UILabel *YourScore;
    __weak IBOutlet UILabel *Best;
    __weak IBOutlet UILabel *New;
    
    __weak IBOutlet UIImageView *Basket;
    __weak IBOutlet UIImageView *Bottom;
    
    __weak IBOutlet UIImageView *G1;
    __weak IBOutlet UIImageView *G2;
    __weak IBOutlet UIImageView *S1;
    __weak IBOutlet UIImageView *D1;
    __weak IBOutlet UIImageView *S2;
    __weak IBOutlet UIImageView *G3;
    __weak IBOutlet UIImageView *D2;

    
    __weak IBOutlet UIButton *Menu;
    
}
-(void) MoveDown;


@end

