//
//  MusicCollection.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/12.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Playlist.h"

@interface MusicCollection : NSObject

@property(nonatomic, strong) NSMutableArray *playlists;
@property(nonatomic, strong) Playlist *library;

-(void)createPlaylist:(NSString *)theName;
-(void)addPlaylist:(Playlist *)thePlaylist;
-(void)removePlaylist:(NSString *)theName;

-(void)addSong:(Song *)theSong toPlaylist:(Playlist *)thePlayList;
-(void)removeSong:(Song *)theSong fromPlaylist:(Playlist *)thePlayList;

-(void)addSong:(Song *)theSong toPlaylistByName:(NSString *)theName;
-(void)removeSong:(Song *)theSong fromPlaylistByName:(NSString *)theName;

-(void)addSong:(Song *)theSong;
-(void)removeSong:(Song *)theSong;

-(void)printSong:(NSString *)theName;
-(void)printSongsInPlaylistByName:(NSString *)theName;
-(void)printSongsInPlaylist:(Playlist *)thePlaylist;
-(void)printSongsInLibrary;



@end
