//
//  PlaylistDetailViewController.h
//  Algorhythm
//
//  Created by Jose Juan Suarez on 8/20/16.
//  Copyright © 2016 Jose Juan Suarez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Playlist.h"

@interface PlaylistDetailViewController : UIViewController

@property (strong,nonatomic) NSString *segueLabelText;
@property (strong,nonatomic) Playlist *playlist;
@property (weak, nonatomic) IBOutlet UIImageView *playlistCoverImage;
@property (weak, nonatomic) IBOutlet UILabel *playlistTitle;
@property (weak, nonatomic) IBOutlet UILabel *playlistDescription;

@end
