//
//  Song.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/12.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Song.h"

@implementation Song

@synthesize title, artist, album, playingTime;

- (void)setTitle:(NSString *)theTitle
       andArtist:(NSString *)theArtist
        andAlbum:(NSString *)theAlbum
  andPlayingTime:(NSString *)thePlayingTime {
    self.title = theTitle;
    self.artist = theArtist;
    self.album = theAlbum;
    self.playingTime = thePlayingTime;
}

- (instancetype)initWithTitle:(NSString *)theTitle
                    andArtist:(NSString *)theArtist
                     andAlbum:(NSString *)theAlbum
               andPlayingTime:(NSString *)thePlayingTime {
    self = [super init];
    if (self) {
        [self setTitle:theTitle
             andArtist:theArtist
              andAlbum:theAlbum
        andPlayingTime:thePlayingTime];
    }
    return self;
}

- (void) print {
    NSLog(@"====================================");
    NSLog(@"title:        %s", [self.title UTF8String]);
    NSLog(@"artist:       %s", [self.artist UTF8String]);
    NSLog(@"albuml:       %s", [self.album UTF8String]);
    NSLog(@"playingTime:  %s", [self.playingTime UTF8String]);
    NSLog(@"====================================");
}

- (BOOL)match:(NSString *)info {
    NSRange search;
    
    search = [title rangeOfString:info];
    if (search.location != NSNotFound) {
        return YES;
    }
    
    search = [artist rangeOfString:info];
    if (search.location != NSNotFound) {
        return YES;
    }
    
    search = [album rangeOfString:info];
    if (search.location != NSNotFound) {
        return YES;
    }
    
    return NO;
}


@end
