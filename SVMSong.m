//
//  SVMSong.m
//  ExampleSoftheme
//
//  Created by System Administrator on 1/27/16.
//  Copyright (c) 2016 Victor Solonets. All rights reserved.
//

#import "SVMSong.h"

@implementation SVMSong

- (instancetype) initWithSongName : (NSString*) newName newArtist : (NSString*) newArtist andText : (NSString*) newText {
    self = [super init];
    if (!self) {
        return nil;
    } else {
        [self setName:newName];
        [self setArtist:newArtist];
        [self setText:newText];
        return self;
    }
}

- (void) play {
    NSLog(@"\n%@ (%@)\n\n%@", _name, _artist,_text);
}

@end
