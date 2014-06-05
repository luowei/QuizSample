//
//  Game.m
//  QuizSample
//
//  Created by luowei on 14-6-5.
//  Copyright (c) 2014年 rootls. All rights reserved.
//

#import "Game.h"

int categoryLoaded;
int questionSelected;
BOOL answer1Correct;
BOOL answer2Correct;
BOOL answer3Correct;
BOOL answer4Correct;

@interface Game ()
@property (weak, nonatomic) IBOutlet UILabel *categorySelected;
@property (weak, nonatomic) IBOutlet UILabel *questText;

@property (weak, nonatomic) IBOutlet UIButton *answer1;
@property (weak, nonatomic) IBOutlet UIButton *answer2;
@property (weak, nonatomic) IBOutlet UIButton *answer3;
@property (weak, nonatomic) IBOutlet UIButton *answer4;

@end

@implementation Game
- (IBAction)answer1:(id)sender {
}
- (IBAction)answer2:(id)sender {
}
- (IBAction)answer3:(id)sender {
}
- (IBAction)answer4:(id)sender {
}

-(void)category1{
    
}
-(void)category2{
    
}
-(void)category3{
    
}
-(void)category4{
    
}
-(void)category5{
    
}
-(void)category6{
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    categoryLoaded = [[NSUserDefaults standardUserDefaults]integerForKey:@"categorySaved"];
    questionSelected = arc4random() %4;
    
    switch (categoryLoaded) {
        case 1:
            _categorySelected.text = [NSString stringWithFormat:@"数学"];
            [self category1];
            break;
        case 2:
            _categorySelected.text = [NSString stringWithFormat:@"语文"];
            [self category2];
            break;
        case 3:
            _categorySelected.text = [NSString stringWithFormat:@"英语"];
            [self category3];
            break;
        case 4:
            _categorySelected.text = [NSString stringWithFormat:@"阅读"];
            [self category4];
            break;
        case 5:
            _categorySelected.text = [NSString stringWithFormat:@"写作"];
            [self category5];
            break;
        case 6:
            _categorySelected.text = [NSString stringWithFormat:@"交谈"];
            [self category6];
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
