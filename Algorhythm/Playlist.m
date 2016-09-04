//
//  Playlist.m
//  Algorhythm
//
//  Created by Krakenn on 9/3/16.
//  Copyright © 2016 Jose Juan Suarez. All rights reserved.
//

#import "Playlist.h"

@implementation Playlist

-(instancetype)initWithIdex:(NSUInteger)index{
    self = [super init];
    if(self){
        MusicLibrary *musicLibrary = [[MusicLibrary alloc]init];
        NSArray *library = musicLibrary.library;
        NSDictionary *playlistDictionary = library[index];
        
        _playlistTitle = [playlistDictionary objectForKey:kTitle];
        _playlistDescription = [playlistDictionary objectForKey:kDescription];
        
        NSString *iconName = [playlistDictionary objectForKey:kIcon];
        _playlistIcon = [UIImage imageNamed:iconName];
        
        NSString *largeIconName = [playlistDictionary objectForKey:kLargeIcon];
        _playlistIconLarge = [UIImage imageNamed:largeIconName];
        
        _playlistArtists = [NSArray arrayWithArray:[playlistDictionary objectForKey:kArtists]];
        
        NSDictionary *colorDictionary = [playlistDictionary objectForKey:kBackgroundColor];
        _backgroundColor = [self rgbColorFromDictionary:colorDictionary];
        
    }
    return self;
}


-(UIColor *)rgbColorFromDictionary:(NSDictionary *)colorDictionary{
    CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue];
    CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue];
    CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue];
    CGFloat alpha = [[colorDictionary objectForKey:@"alpha"] doubleValue];
    
    return [UIColor colorWithRed:red/255.00 green:green/255.00 blue:blue/255.00 alpha:alpha];
    
    
}
@end
