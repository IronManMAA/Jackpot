//
//  ViewController.m
//  Jackpot
//
//  Created by Marco Almeida on 11/28/16.
//  Copyright © 2016 THE IRON YARD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *DisplayFrame;
@property (assign) NSString *DisplayText;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.DisplayText=@"";
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Action  Handlers


- (IBAction)PlaceBet:(UIButton *)sender
    {
//        self.DisplayFrame.text=@"Bet Placed";
        int randomNumber=0;
        NSMutableArray *checker = [[NSMutableArray alloc] init];
        NSString *rn;
        for(int i = 0 ; i < 6 ; i++){
            randomNumber = arc4random() % 53;
            rn=[NSString stringWithFormat:@"%i", randomNumber];
            BOOL contains = [checker containsObject:rn];
            if (contains) { i=i-1; }
            else { [checker addObject:rn];}
//            NSLog(@"random number %@", rn);

        }
        NSString * stringToDisplay = [checker componentsJoinedByString:@"-"];
        self.DisplayFrame.text=stringToDisplay;
    }

@end
