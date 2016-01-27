//
//  SVMSong.h
//  ExampleSoftheme
//
//  Created by System Administrator on 1/27/16.
//  Copyright (c) 2016 Victor Solonets. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SVMSongProtocoling <NSObject>

@required
- (void) play;

@end

@interface SVMSong : NSObject <SVMSongProtocoling>

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *text;
@property (nonatomic) NSString *artist;

- (instancetype) initWithSongName : (NSString*) newName newArtist : (NSString*) newArtist andText : (NSString*) newText;
@end
