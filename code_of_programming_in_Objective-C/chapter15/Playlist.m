//
//  Playlist.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/12.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Playlist.h"

@implementation Playlist

@synthesize name, songs;

- (instancetype)initWithName:(NSString *)theName {
    self = [super init];
    if (self) {
        self.name = theName;
        self.songs = [NSMutableArray array];
    }
    return self;
}

- (void)addSong:(Song *)theSong {
    [songs addObject:theSong];
}

- (void)removeSong:(Song *)theSong {
    [songs removeObject:theSong];
}

- (NSMutableArray *)search:(NSString *)info {
    NSMutableArray *result = [NSMutableArray array];
    for (Song *thisSong in songs) {
        if ([thisSong match:info]) {
            [result addObject:thisSong];
        }
    }
    
    if ([result count]) {
        return result;
    } else
        return nil;
}

- (void)list {
    NSLog(@"========================= Songs of: %-10s ==========================",
          [self.name UTF8String]);
    for (Song *thisSong in songs) {
        NSLog(@"%-32s %-20s %-20s",
              [thisSong.title UTF8String],
              [thisSong.artist UTF8String],
              [thisSong.album UTF8String]);
    }
    NSLog(@"========================================================================="
          );
}

- (BOOL)nameIs:(NSString *)theName {
    return [self.name compare:theName] == NSOrderedSame ? YES : NO;
}

- (BOOL)contain:(Song *)theSong {
   return [songs containsObject:theSong];
}


@end

