//
//  Playlist.m
//  Algorhythm
//
//  Created by Jose Juan Suarez on 8/21/16.
//  Copyright © 2016 Jose Juan Suarez. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"

@implementation Playlist

-(instancetype)initWithIndex:(NSUInteger)index{
    self = [super init];
    if (self){
        MusicLibrary *musicLibrary = [[MusicLibrary alloc]init];
        NSArray *library = musicLibrary.library;
        NSDictionary *playlistDictionary = library[index];
        _playlistTitle = [playlistDictionary objectForKey:kTitle];
        _playlistDescription = [playlistDictionary objectForKey:kDescription];
      
    }
    
    return self;
}

@end
