//
//  ViewController.m
//  Algorhythm
//
//  Created by Jose Juan Suarez on 8/20/16.
//  Copyright © 2016 Jose Juan Suarez. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"

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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"showPlaylistDetail"]){
        
        PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController *)segue.destinationViewController;
        
        playlistDetailController.segueLabelText = @"You pressed me!";
        
    }
    
}


@end
