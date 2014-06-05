//
//  Categories.m
//  QuizSample
//
//  Created by luowei on 14-6-5.
//  Copyright (c) 2014年 rootls. All rights reserved.
//

#import "Categories.h"

int category1Number;
int category2Number;
int category1SelectNumber;
int category2SelectNumber;

@interface Categories (){
    
}
@property (weak, nonatomic) IBOutlet UIButton *category1;
@property (weak, nonatomic) IBOutlet UIButton *category2;

@end

@implementation Categories

- (IBAction)button1:(id)sender {
    [[NSUserDefaults standardUserDefaults]setInteger:category1SelectNumber forKey:@"categorySaved"];
    
    
    
}
- (IBAction)button2:(id)sender {
    [[NSUserDefaults standardUserDefaults]setInteger:category2SelectNumber forKey:@"categorySaved"];
    
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
    
    category1Number = arc4random() %3;
    category2Number = arc4random() %3;
    
    switch (category1Number) {
        case 0:
            [_category1 setTitle:@"数学" forState:UIControlStateNormal];
            category1SelectNumber = 1;
            break;
        case 1:
            [_category1 setTitle:@"语文" forState:UIControlStateNormal];
            category1SelectNumber = 2;
            break;
        case 2:
            [_category1 setTitle:@"英语" forState:UIControlStateNormal];
            category1SelectNumber = 3;
            break;
        default:
            break;
    }
    switch (category2Number) {
        case 0:
            [_category2 setTitle:@"阅读" forState:UIControlStateNormal];
            category2SelectNumber = 4;
            break;
        case 1:
            [_category2 setTitle:@"写作" forState:UIControlStateNormal];
            category2SelectNumber = 5;
            break;
        case 2:
            [_category2 setTitle:@"交谈" forState:UIControlStateNormal];
            category2SelectNumber = 6;
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
