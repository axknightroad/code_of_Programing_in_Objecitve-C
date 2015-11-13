//
//  MusicCollection.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/12.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "MusicCollection.h"

@implementation MusicCollection

@synthesize playlists, library;

- (instancetype)init
{
    self = [super init];
    if (self) {
        playlists = [NSMutableArray array];
        library =[[Playlist alloc] initWithName:@"Library"];
    }
    return self;
}

- (void)createPlaylist:(NSString *)theName {
    [playlists addObject:[[Playlist alloc] initWithName:theName]];
}

- (void)addPlaylist:(Playlist *)thePlaylist {
    [playlists addObject:thePlaylist];
    
    for (Song *thisSong in thePlaylist.songs) {
        if (![library contain:thisSong]) {
            [library addSong:thisSong];
        }
    }
}

- (void)removePlaylist:(NSString *)theName {
    [playlists enumerateObjectsUsingBlock:
     ^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj nameIs:theName]) {
            [playlists removeObject:obj];
            *stop = YES;
        }
    }];
}


-(void)addSong:(Song *)theSong toPlaylist:(Playlist *)thePlayList {
    [thePlayList addSong:theSong];
    
    if (![library contain:theSong]) {
        [library addSong:theSong];
    }

}

-(void)removeSong:(Song *)theSong fromPlaylist:(Playlist *)thePlayList {
    [thePlayList removeSong:theSong];
}

- (void)addSong:(Song *)theSong toPlaylistByName:(NSString *)theName {
    [playlists enumerateObjectsUsingBlock:
     ^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
         if ([obj nameIs:theName]) {
             [obj addSong:theSong];
             *stop = YES;
         }
     }];
    
    if (![library contain:theSong]) {
        [library addSong:theSong];
    }
}

- (void)removeSong:(Song *)theSong fromPlaylistByName:(NSString *)theName {
   [playlists enumerateObjectsUsingBlock:
    ^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj nameIs:theName]) {
            [obj removeSong:theSong];
            *stop = YES;
        }
    }];
}

- (void)addSong:(Song *)theSong {
    if (![library contain:theSong]) {
        [library addSong:theSong];
    }
}

- (void)removeSong:(Song *)theSong {
    if ([library contain:theSong]) {
        [library removeSong:theSong];
    }
    
    for (Playlist *thePlaylist in playlists) {
        if ([thePlaylist contain:theSong]) {
            [thePlaylist removeSong:theSong];
        }
    }
}

- (void) printSong:(NSString *)theName {
    NSMutableArray *matchsSongs = [NSMutableArray array];
    matchsSongs = [library search:theName];
    for (Song *thisSong in matchsSongs) {
        [thisSong print];
    }
}

- (void)printSongsInPlaylist:(Playlist *)thePlaylist {
    [thePlaylist list];
}

- (void)printSongsInPlaylistByName:(NSString *)theName {
    [playlists enumerateObjectsUsingBlock:
     ^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
         if ([obj nameIs:theName]) {
             [obj list];
             *stop = YES;
         }
     }];
}

- (void)printSongsInLibrary {
    [library list];
}

@end
