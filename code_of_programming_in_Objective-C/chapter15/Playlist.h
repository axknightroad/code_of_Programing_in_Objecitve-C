//
//  Playlist.h
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/12.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Song.h"

@interface Playlist : NSObject

@property(nonatomic, copy) NSString *name;
@property(strong, nonatomic) NSMutableArray *songs;

- (instancetype)initWithName:(NSString *)theName;
- (void)addSong:(Song *)theSong;
- (void)removeSong:(Song *)theSong;
- (NSMutableArray  *)search:(NSString *)info;

- (void)list;

- (BOOL)nameIs:(NSString *)theName;
- (BOOL)contain:(Song *)theSong;


@end
