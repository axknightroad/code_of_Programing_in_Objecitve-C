//
//  Exericises15-9.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/12.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "MusicCollection.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Song *song1 = [[Song alloc] initWithTitle:@"Come on Over"
                                        andArtist:@"Christina Aguilera"
                                         andAlbum:@"Remix Plus"
                                   andPlayingTime:@"4:00:00"];
        Song *song2 = [[Song alloc] initWithTitle:@"THEME FROM LUPIN III 2015"
                                        andArtist:@"Yuji Ohno"
                                         andAlbum:@"LUPIN THE THIRD"
                                   andPlayingTime:@"4:21:00"];
        Song *song3 = [[Song alloc] initWithTitle:@"Destin Histoire"
                                        andArtist:@"yoshiki*lisa"
                                         andAlbum:@"GOSICK"
                                   andPlayingTime:@"4:23:00"];
        Song *song4 = [[Song alloc] initWithTitle:@"Merry Christmas Mr. Lawrence"
                                        andArtist:@"Wu Fang"
                                         andAlbum:@"Best Selection"
                                   andPlayingTime:@"4:13:00"];
        Song *song5 = [[Song alloc] initWithTitle:@"ZANTETSUKEN 2015"
                                        andArtist:@"Yuji Ohno"
                                         andAlbum:@"LUPIN THE THIRD"
                                   andPlayingTime:@"1:46:00"];
        
        MusicCollection *myMusic = [[MusicCollection alloc] init];
        [myMusic createPlaylist:@"playlist1"];
        Playlist *playlist2 = [[Playlist alloc] initWithName:@"playlist2"];
        
//        [song1 print];
        
        [myMusic addSong:song1];
        [myMusic addSong:song2];
//        [myMusic printSongsInLibrary];
//        NSLog(@" ");
        
        [myMusic addSong:song3 toPlaylistByName:@"playlist1"];
        [myMusic addSong:song4 toPlaylistByName:@"playlist1"];
//        [myMusic printSongsInPlaylistByName:@"playlist1"];
//        [myMusic printSongsInLibrary];
//        NSLog(@" ");
        
        [playlist2 addSong:song5];
        [myMusic addPlaylist:playlist2];
//        [playlist2 list];
        [myMusic printSongsInLibrary];
        NSLog(@" ");
        
//        [myMusic removeSong:song3];
//        [myMusic printSongsInPlaylistByName:@"playlist1"];
//        [myMusic printSongsInLibrary];
//        NSLog(@" ");
        
        [myMusic printSong:@"LU"];

    }
    
    return 0;
}