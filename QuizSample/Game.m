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

int scoreNumber;
int livesNumber;
BOOL gameInProgress;

@interface Game ()
@property (weak, nonatomic) IBOutlet UILabel *categorySelected;
@property (weak, nonatomic) IBOutlet UILabel *questText;

@property (weak, nonatomic) IBOutlet UIButton *answer1;
@property (weak, nonatomic) IBOutlet UIButton *answer2;
@property (weak, nonatomic) IBOutlet UIButton *answer3;
@property (weak, nonatomic) IBOutlet UIButton *answer4;

@property (weak, nonatomic) IBOutlet UIButton *nextCategory;
@property (weak, nonatomic) IBOutlet UIButton *exit;
@property (weak, nonatomic) IBOutlet UILabel *score;
@property (weak, nonatomic) IBOutlet UILabel *lives;
@property (weak, nonatomic) IBOutlet UIImageView *result;

@end

@implementation Game

-(void)rightAnswer{
    scoreNumber += 1;
    _score.text = [NSString stringWithFormat:@"%i",scoreNumber];
    _nextCategory.hidden = NO;
    _answer1.hidden = YES;
    _answer2.hidden = YES;
    _answer3.hidden = YES;
    _answer4.hidden = YES;
    _questText.hidden = YES;
    _categorySelected.hidden = YES;
    _result.hidden = NO;
    _result.image = [UIImage imageNamed:@"rightAnswer.png"];
}
-(void)wrongAnswer{
    livesNumber -= 1;
    _lives.text = [NSString stringWithFormat:@"%i",livesNumber];
    _nextCategory.hidden = NO;
    _answer1.hidden = YES;
    _answer2.hidden = YES;
    _answer3.hidden = YES;
    _answer4.hidden = YES;
    _questText.hidden = YES;
    _categorySelected.hidden = YES;
    _result.hidden = NO;
    _result.image = [UIImage imageNamed:@"wrongAnswer.png"];
    if(livesNumber == NO){
        _result.image = [UIImage imageNamed:@"gameOver.png"];
        _nextCategory.hidden = YES;
        _exit.hidden = NO;
        gameInProgress = NO;
    }
}

- (IBAction)answer1:(id)sender {
    if(answer1Correct == YES){
        [self rightAnswer];
    }else{
        [self wrongAnswer];
    }
}
- (IBAction)answer2:(id)sender {
    if(answer2Correct == YES){
        [self rightAnswer];
    }else{
        [self wrongAnswer];
    }
}
- (IBAction)answer3:(id)sender {
    if(answer3Correct == YES){
        [self rightAnswer];
    }else{
        [self wrongAnswer];
    }
}
- (IBAction)answer4:(id)sender {
    if(answer4Correct == YES){
        [self rightAnswer];
    }else{
        [self wrongAnswer];
    }
}

-(void)category1{
    switch (questionSelected) {
        case 0:
            _questText.text = [NSString stringWithFormat:@"轮船往返于一条河的两码头之间，如果船本身在静水中的速度是固定的，那么，当这条河的水流速度增大时，船往返一次所用的时间将？"];
            [_answer1 setTitle:@"增多" forState:UIControlStateNormal];
            [_answer2 setTitle:@"减少" forState:UIControlStateNormal];
            [_answer3 setTitle:@"不变" forState:UIControlStateNormal];
            [_answer4 setTitle:@"增多、减少都有可能" forState:UIControlStateNormal];
            answer1Correct = YES;
            break;
        case 1:
            _questText.text = [NSString stringWithFormat:@"有甲、乙两项工作，张师傅单独完成甲工作要9天，单独完成乙工作要12天．王师傅单独完成甲工作要3天，单独完成乙工作要15天．如果两人合作完成这两项工作，最少需要多少天？"];
            [_answer1 setTitle:@"最少需要7天" forState:UIControlStateNormal];
            [_answer2 setTitle:@"最少需要8天" forState:UIControlStateNormal];
            [_answer3 setTitle:@"最少需要9天" forState:UIControlStateNormal];
            [_answer4 setTitle:@"最少需要10天" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        case 2:
            _questText.text = [NSString stringWithFormat:@"1只猴子摘了一堆桃子，第一天吃了这堆桃子的1/7，第二天吃了余下的桃子的1/6，第三天吃了余下桃子的1/5，第四天吃了余下的1/4，第五天吃了余下的1/3，第六天吃了余下的1/2，这时还剩下12个桃子，那么第一天和第二天所吃桃子的总数是多少？"];
            [_answer1 setTitle:@"21" forState:UIControlStateNormal];
            [_answer2 setTitle:@"22" forState:UIControlStateNormal];
            [_answer3 setTitle:@"23" forState:UIControlStateNormal];
            [_answer4 setTitle:@"24" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 3:
            _questText.text = [NSString stringWithFormat:@"某小学六年级选出男生的和12名女生参加数学竞赛，剩下的男生人数是女生人数的2倍，已知这个学校六年学生共有156人，男、女生各有多少人？"];
            [_answer1 setTitle:@"男生98人，女生58人" forState:UIControlStateNormal];
            [_answer2 setTitle:@"男生99人，女生57人" forState:UIControlStateNormal];
            [_answer3 setTitle:@"男生100人，女生56人" forState:UIControlStateNormal];
            [_answer4 setTitle:@"男生101人，女生55人" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        default:
            break;
    }
    
}
-(void)category2{
    switch (questionSelected) {
        case 0:
            _questText.text = [NSString stringWithFormat:@"下面不是句子的一项是？"];
            [_answer1 setTitle:@"瑞雪兆丰年" forState:UIControlStateNormal];
            [_answer2 setTitle:@"为人民服务" forState:UIControlStateNormal];
            [_answer3 setTitle:@"她是好样的" forState:UIControlStateNormal];
            [_answer4 setTitle:@"她哭了" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        case 1:
            _questText.text = [NSString stringWithFormat:@"危楼高百尺。猜一成语？"];
            [_answer1 setTitle:@"高不可攀" forState:UIControlStateNormal];
            [_answer2 setTitle:@"岌岌可危" forState:UIControlStateNormal];
            [_answer3 setTitle:@"得寸进尺" forState:UIControlStateNormal];
            [_answer4 setTitle:@"楼外有楼" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        case 2:
            _questText.text = [NSString stringWithFormat:@"这是…… 电影院”中的“电影院”有五个修饰词语，排列顺序正确的一项是？①、一座 ②、现代化的 ③、武汉市 ④、唯一的 ⑤新型"];
            [_answer1 setTitle:@"③①④②⑤" forState:UIControlStateNormal];
            [_answer2 setTitle:@"①⑤②③④" forState:UIControlStateNormal];
            [_answer3 setTitle:@"③④①②⑤" forState:UIControlStateNormal];
            [_answer4 setTitle:@"②④①⑤③" forState:UIControlStateNormal];
            answer3Correct = YES;
            break;
        case 3:
            _questText.text = [NSString stringWithFormat:@"“她激动得说不出话来。”缩句正确的一句是？"];
            [_answer1 setTitle:@"她激动。" forState:UIControlStateNormal];
            [_answer2 setTitle:@"她说不出话来。" forState:UIControlStateNormal];
            [_answer3 setTitle:@"她说。" forState:UIControlStateNormal];
            [_answer4 setTitle:@"她动。" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        default:
            break;
    }

}
-(void)category3{
    switch (questionSelected) {
        case 0:
            _questText.text = [NSString stringWithFormat:@"People in western countries celebrate______ Christmas, while people in China observe______ Spring Festival."];
            [_answer1 setTitle:@"A. the; the " forState:UIControlStateNormal];
            [_answer2 setTitle:@"B./; /" forState:UIControlStateNormal];
            [_answer3 setTitle:@"C. the; /" forState:UIControlStateNormal];
            [_answer4 setTitle:@"D./;the" forState:UIControlStateNormal];
            answer1Correct = YES;
            break;
        case 1:
            _questText.text = [NSString stringWithFormat:@"Children get tired of learning often because they _____to do better than they can, both at school and at home."];
            [_answer1 setTitle:@"A. hope " forState:UIControlStateNormal];
            [_answer2 setTitle:@"B. are hoped" forState:UIControlStateNormal];
            [_answer3 setTitle:@"C. expect" forState:UIControlStateNormal];
            [_answer4 setTitle:@"D. are expected" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 2:
            _questText.text = [NSString stringWithFormat:@"China is known ______ a developing country."];
            [_answer1 setTitle:@"A. as" forState:UIControlStateNormal];
            [_answer2 setTitle:@"B. with" forState:UIControlStateNormal];
            [_answer3 setTitle:@"C. for " forState:UIControlStateNormal];
            [_answer4 setTitle:@"D. of" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 3:
            _questText.text = [NSString stringWithFormat:@"I didn’t do well in the exam. What about you, dear? — I did _____ than you. "];
            [_answer1 setTitle:@"A. no worse" forState:UIControlStateNormal];
            [_answer2 setTitle:@"B. no better" forState:UIControlStateNormal];
            [_answer3 setTitle:@"C. no more" forState:UIControlStateNormal];
            [_answer4 setTitle:@"D. not better" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        default:
            break;
    }

}
-(void)category4{
    switch (questionSelected) {
        case 0:
            _questText.text = [NSString stringWithFormat:@"灵敏电流计在搬运过程中,由于碰撞或振动会是指针左右摆动,为避免 指针受损必须减少这种摆动应采用何种方法？"];
            [_answer1 setTitle:@"A.将灵敏电流计周围用泡沫塑料固定好" forState:UIControlStateNormal];
            [_answer2 setTitle:@"B.将灵敏电流计的指针拆下来,单独存放" forState:UIControlStateNormal];
            [_answer3 setTitle:@"C.将灵敏电流计的正负接线柱用导线连接起来" forState:UIControlStateNormal];
            [_answer4 setTitle:@"D.将灵敏电流计的指针设法固定在刻度盘上" forState:UIControlStateNormal];
            answer3Correct = YES;
            break;
        case 1:
            _questText.text = [NSString stringWithFormat:@"物体被“毛玻璃”遮住后就看不见了,其原因是？"];
            [_answer1 setTitle:@"A.物体射向“毛玻璃”地广,一部分被“毛玻璃”反射,另一部分被吸收" forState:UIControlStateNormal];
            [_answer2 setTitle:@"B.物体射向“毛玻璃”地广,在“毛玻璃”表面全部反射了" forState:UIControlStateNormal];
            [_answer3 setTitle:@"C.“毛玻璃”是不透光的" forState:UIControlStateNormal];
            [_answer4 setTitle:@"D.物体射向“毛玻璃”地广,在“毛玻璃”表面产生漫反射和漫折射" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 2:
            _questText.text = [NSString stringWithFormat:@"一列火车在雨中自东向西形式,车内乘客观察到雨滴以一定的速度垂直下落,那么车外站在月台上的人看到的雨滴是？"];
            [_answer1 setTitle:@"A.沿偏东方向落下" forState:UIControlStateNormal];
            [_answer2 setTitle:@"B.垂直落下" forState:UIControlStateNormal];
            [_answer3 setTitle:@"C.沿偏西方向落下" forState:UIControlStateNormal];
            [_answer4 setTitle:@"D.无法确定" forState:UIControlStateNormal];
            answer3Correct = YES;
            break;
        case 3:
            _questText.text = [NSString stringWithFormat:@"在公路边,你看到行驶的自行车车轮子上的辐条的清晰程度是？"];
            [_answer1 setTitle:@"A.上部分比下部分清晰" forState:UIControlStateNormal];
            [_answer2 setTitle:@"B.上部分与下部分一样清晰" forState:UIControlStateNormal];
            [_answer3 setTitle:@"C.下部分比上部分清晰" forState:UIControlStateNormal];
            [_answer4 setTitle:@"D.以上说法都不对" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        default:
            break;
    }
}
-(void)category5{
    switch (questionSelected) {
        case 0:
            _questText.text = [NSString stringWithFormat:@"感冒忌用下列哪一种食物？"];
            [_answer1 setTitle:@"A.海鱼" forState:UIControlStateNormal];
            [_answer2 setTitle:@"B.豆浆" forState:UIControlStateNormal];
            [_answer3 setTitle:@"C.青菜" forState:UIControlStateNormal];
            [_answer4 setTitle:@"D.生姜" forState:UIControlStateNormal];
            answer1Correct = YES;
            break;
        case 1:
            _questText.text = [NSString stringWithFormat:@"老年人一天吃几只鸡蛋才合适？"];
            [_answer1 setTitle:@"A.2只" forState:UIControlStateNormal];
            [_answer2 setTitle:@"B.1~2只" forState:UIControlStateNormal];
            [_answer3 setTitle:@"C.1只" forState:UIControlStateNormal];
            [_answer4 setTitle:@"D.2~3只" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        case 2:
            _questText.text = [NSString stringWithFormat:@"苹果中含有增强记忆力的微量元素是?"];
            [_answer1 setTitle:@"A.铁" forState:UIControlStateNormal];
            [_answer2 setTitle:@"B.锌" forState:UIControlStateNormal];
            [_answer3 setTitle:@"C.钙" forState:UIControlStateNormal];
            [_answer4 setTitle:@"D.碘" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        case 3:
            _questText.text = [NSString stringWithFormat:@"吃太多手摇爆米花机爆出的米花会导致?"];
            [_answer1 setTitle:@"A.锡中毒" forState:UIControlStateNormal];
            [_answer2 setTitle:@"B.铅中毒" forState:UIControlStateNormal];
            [_answer3 setTitle:@"C.铬中毒" forState:UIControlStateNormal];
            [_answer4 setTitle:@"D.碘中毒" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        default:
            break;
    }
}
-(void)category6{
    switch (questionSelected) {
        case 0:
            _questText.text = [NSString stringWithFormat:@"出现食物中毒症状或者误食化学品时，最先采取的急救措施是？"];
            [_answer1 setTitle:@"A.催吐" forState:UIControlStateNormal];
            [_answer2 setTitle:@"B.吃止泻药物" forState:UIControlStateNormal];
            [_answer3 setTitle:@"C.进行人工呼吸" forState:UIControlStateNormal];
            [_answer4 setTitle:@"D.向卫生防疫部门报告" forState:UIControlStateNormal];
            answer1Correct = YES;
            break;
        case 1:
            _questText.text = [NSString stringWithFormat:@"铜器与（）不宜长久接触，否则会产生铜绿。"];
            [_answer1 setTitle:@"a.酱油" forState:UIControlStateNormal];
            [_answer2 setTitle:@"b.花椒面" forState:UIControlStateNormal];
            [_answer3 setTitle:@"c.味精" forState:UIControlStateNormal];
            [_answer4 setTitle:@"d.醋" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 2:
            _questText.text = [NSString stringWithFormat:@"如酸菜中就含一定量的亚硝酸盐，吃酸菜时最好吃一些（   ），可减少亚硝酸盐的危害。"];
            [_answer1 setTitle:@"a.绿色食品" forState:UIControlStateNormal];
            [_answer2 setTitle:@"b.新鲜蔬菜" forState:UIControlStateNormal];
            [_answer3 setTitle:@"c.富含维生素c的水果" forState:UIControlStateNormal];
            [_answer4 setTitle:@"d.各种杂粮" forState:UIControlStateNormal];
            answer3Correct = YES;
            break;
        case 3:
            _questText.text = [NSString stringWithFormat:@"五四运动爆发的直接原因是？"];
            [_answer1 setTitle:@"A.俄国十月革命的影响" forState:UIControlStateNormal];
            [_answer2 setTitle:@"B.巴黎和会上中国外交失败" forState:UIControlStateNormal];
            [_answer3 setTitle:@"C.中国人民与帝国主义封建主义矛盾的加剧" forState:UIControlStateNormal];
            [_answer4 setTitle:@"D.中国无产阶级队伍的壮大及其斗争的发展" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        default:
            break;
    }
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
    
    if(gameInProgress == NO){
        livesNumber = 3;
        scoreNumber = 0;
        gameInProgress = YES;
    }
    _result.hidden = YES;
    _exit.hidden = YES;
    _nextCategory.hidden = YES;
    
    _lives.text = [NSString stringWithFormat:@"%i",livesNumber];
    _score.text = [NSString stringWithFormat:@"%i",scoreNumber];
    
    
    answer1Correct = NO;
    answer2Correct = NO;
    answer3Correct = NO;
    answer4Correct = NO;
    
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
