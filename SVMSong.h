//
//  SVMSong.h
//  ExampleSoftheme
//
//  Created by System Administrator on 1/27/16.
//  Copyright (c) 2016 Victor Solonets. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SVMSong;

@protocol SongProtocol <NSObject>

@required
- (void) play;

@end

@interface SVMSong : NSObject <SongProtocol>

@property NSString *name;
@property NSString *text;
@property NSString *artist;

- (instancetype) initWithSongName : (NSString*) newName newArtist : (NSString*) newArtist andText : (NSString*) newText;
- (void) play;

@end
