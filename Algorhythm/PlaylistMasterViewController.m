//
//  ViewController.m
//  Algorhythm
//
//  Created by Jose Juan Suarez on 8/20/16.
//  Copyright © 2016 Jose Juan Suarez. All rights reserved.
//

#import "PlaylistMasterViewController.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.aButton setTitle:@"Press Me!" forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonPressed:(id)sender {
    
    self.view.backgroundColor = [UIColor orangeColor];
}

@end
