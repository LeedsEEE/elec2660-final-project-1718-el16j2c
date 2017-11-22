//
//  Game.m
//  Gold Collector
//
//  Created by Jiaxing Chen on 2017/11/16.
//  Copyright © 2017年 Jiaxing Chen. All rights reserved.
//

#import "Game.h"

@interface Game ()
@property (nonatomic, weak) NSTimer *timer;
@property (nonatomic, weak) NSTimer *BasketTimer;
@end

@implementation Game

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    if (point.x < Basket.center.x){
        BasketMove = -40;
    }
    else if (point.x > Basket.center.x){
        BasketMove = 40;
    }
    if (CGRectIntersectsRect(LeftEdge.frame, Basket.frame) && (point.x<329)){
        BasketMove = 0;
    }
    if (CGRectIntersectsRect(RightEdge.frame, Basket.frame) && (point.x>329)){
        BasketMove = 0;
    }
}



-(void) BasketMovement{
    Basket.center = CGPointMake(Basket.center.x + BasketMove, Basket.center.y);
    if (CGRectIntersectsRect(Basket.frame, LeftEdge.frame)){
        BasketMove = 0;
    }
    if (CGRectIntersectsRect(Basket.frame, RightEdge.frame)){
        BasketMove = 0;
    }
}

-(void) MoveDown{
    G1.center = CGPointMake(G1.center.x, G1.center.y+3);
    // I've learnt the principle of CGPointMake and how to use CGPointMake from following website:https://tieba.baidu.com/p/2654395877?red_tag=3165378656 and http://blog.csdn.net/yanglishuan/article/details/39989601
    G2.center = CGPointMake(G2.center.x, G2.center.y+3);
    S1.center = CGPointMake(S1.center.x, S1.center.y+3);
    D1.center = CGPointMake(D1.center.x, D1.center.y+3);
    S2.center = CGPointMake(S2.center.x, S2.center.y+3);
    G3.center = CGPointMake(G3.center.x, G3.center.y+3);
    D2.center = CGPointMake(D2.center.x, D2.center.y+3);
    
    
    
    if (CGRectIntersectsRect(G1.frame, Bottom.frame)) {  // I've learnt the principle of CGRectIntersectsRect and how to use CGRectIntersectsRect from the following website: https://stackoverflow.com/questions/21646295/collision-detection-cgrectintersectrect
        
        G1.center = CGPointMake(G1.center.x, -178);
        LiveDecrease = LiveDecrease - 1;
        LivesLeft.text = [NSString stringWithFormat:@"Lives Left: %i", LiveDecrease];
        if (LiveDecrease == 0){
            [_timer invalidate];
            Menu.hidden = NO;
        }
    }
    
    
    if (CGRectIntersectsRect(G2.frame, Bottom.frame)) {
        G2.center = CGPointMake(G2.center.x, -246);
        
        LiveDecrease = LiveDecrease - 1;
        LivesLeft.text = [NSString stringWithFormat:@"Lives Left: %i", LiveDecrease];
        if (LiveDecrease == 0){
            [_timer invalidate];
            Menu.hidden = NO;
        }
    }
    
    if (CGRectIntersectsRect(S1.frame, Bottom.frame)) {
        S1.center = CGPointMake(S1.center.x, -110);
    }
    
    if (CGRectIntersectsRect(D1.frame, Bottom.frame)) {
        D1.center = CGPointMake(D1.center.x, -307);
        
        LiveDecrease = LiveDecrease - 1;
        LivesLeft.text = [NSString stringWithFormat:@"Lives Left: %i", LiveDecrease];
        if (LiveDecrease == 0){
            [_timer invalidate];
            Menu.hidden = NO;
        }
    }
    
    if (CGRectIntersectsRect(S2.frame, Bottom.frame)) {
        S2.center = CGPointMake(S2.center.x, -524);
    }
    
    if (CGRectIntersectsRect(G3.frame, Bottom.frame)) {
        G3.center = CGPointMake(G3.center.x, -265);
        
        LiveDecrease = LiveDecrease - 1;
        LivesLeft.text = [NSString stringWithFormat:@"Lives Left: %i", LiveDecrease];
        if (LiveDecrease == 0){
            [_timer invalidate];
            Menu.hidden = NO;
        }
    }
    
    if (CGRectIntersectsRect(D2.frame, Bottom.frame)) {
        D2.center = CGPointMake(D2.center.x, -405);
        
        LiveDecrease = LiveDecrease - 1;
        LivesLeft.text = [NSString stringWithFormat:@"Lives Left: %i", LiveDecrease];
        if (LiveDecrease == 0){
            [_timer invalidate];
            Menu.hidden = NO;
        }
    }
    
    
    // the code below shown what happened when basket collect the gold, diamond and stone.
    
    if (CGRectIntersectsRect(G1.frame, Basket.frame)) {
        G1.center = CGPointMake(G1.center.x, -178);
        ScoreIncrease = ScoreIncrease + 1;
        Score.text = [NSString stringWithFormat:@"Score: %i", ScoreIncrease];
    }
    
    if (CGRectIntersectsRect(G2.frame, Basket.frame)) {
        G2.center = CGPointMake(G2.center.x, -246);
        ScoreIncrease = ScoreIncrease + 1;
        Score.text = [NSString stringWithFormat:@"Score: %i", ScoreIncrease];
    }
    
    if (CGRectIntersectsRect(S1.frame, Basket.frame)) {
        S1.center = CGPointMake(S1.center.x, -110);
        LiveDecrease = LiveDecrease - 1;
        LivesLeft.text = [NSString stringWithFormat:@"Lives Left: %i", LiveDecrease];
    }
    
    if (CGRectIntersectsRect(D1.frame, Basket.frame)){
        D1.center = CGPointMake(D1.center.x, -307);
        ScoreIncrease = ScoreIncrease + 1;
        Score.text = [NSString stringWithFormat:@"Score: %i", ScoreIncrease];
    }
    
    if (CGRectIntersectsRect(S2.frame, Basket.frame)) {
        S2.center = CGPointMake(S2.center.x, -524);
        LiveDecrease = LiveDecrease - 1;
        LivesLeft.text = [NSString stringWithFormat:@"Lives Left: %i", LiveDecrease];
    }
    
    if (CGRectIntersectsRect(G3.frame, Basket.frame)) {
        G3.center = CGPointMake(G3.center.x, -265);
        ScoreIncrease = ScoreIncrease + 1;
        Score.text = [NSString stringWithFormat:@"Score: %i", ScoreIncrease];
    }
    
    if (CGRectIntersectsRect(D2.frame, Basket.frame)) {
        D2.center = CGPointMake(D2.center.x, -405);
        ScoreIncrease = ScoreIncrease + 1;
        Score.text = [NSString stringWithFormat:@"Score: %i", ScoreIncrease];
    }
    
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    BasketMove = 0;
}


- (void)viewDidLoad {
    
    Menu.hidden = YES;
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:(0.03) target:self selector:@selector(MoveDown) userInfo:nil repeats:YES];   // I've learnt this code from the following website: http://www.cocoachina.com/ios/20150710/12444.html
    _BasketTimer = [NSTimer scheduledTimerWithTimeInterval:(0.03) target:self selector:@selector(BasketMovement) userInfo:nil repeats:YES];
    
    LiveDecrease = 10;
    
    ScoreIncrease = 0;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
