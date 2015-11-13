//
//  Song.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/12.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject

@property(copy, nonatomic) NSString *title, *artist, *album, *playingTime;

- (instancetype)initWithTitle:(NSString *)theTitle
                    andArtist:(NSString *)theArtist
                     andAlbum:(NSString *)theAlbum
               andPlayingTime:(NSString *)thePlayingTime;

- (void)setTitle:(NSString *)theTitle
       andArtist:(NSString *)theArtist
        andAlbum:(NSString *)theAlbum
  andPlayingTime:(NSString *)thePlayingTime;

- (void)print;

- (BOOL)match:(NSString *)info;

@end
