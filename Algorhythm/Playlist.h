//
//  Playlist.h
//  Algorhythm
//
//  Created by Krakenn on 9/3/16.
//  Copyright © 2016 Jose Juan Suarez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MusicLibrary.h"

@interface Playlist : NSObject

@property (strong,nonatomic) NSString *playlistTitle;
@property(strong,nonatomic) NSString *playlistDescription;
@property(strong,nonatomic) UIImage *playlistIcon;
@property(strong,nonatomic) UIImage *playlistIconLarge;
@property(strong,nonatomic) NSArray *playlistArtists;
@property(strong,nonatomic) UIColor *backgroundColor;

-(instancetype)initWithIdex:(NSUInteger)index;

@end
