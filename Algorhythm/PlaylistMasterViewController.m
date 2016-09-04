//
//  ViewController.m
//  Algorhythm
//
//  Created by Jose Juan Suarez on 8/20/16.
//  Copyright © 2016 Jose Juan Suarez. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Playlist *playlist = [[Playlist alloc]initWithIdex:0];
    self.playlistImageView0.image = playlist.playlistIcon;
    [self.aButton setTitle:@"Press Me!" forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"showPlaylistDetail"]){
        
        PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController *)segue.destinationViewController;
        
        playlistDetailController.playlist = [[Playlist alloc]initWithIdex:0];
        
        
    }
    
}


@end
