//
//  SVMGroup.h
//  ExampleSoftheme
//
//  Created by System Administrator on 1/27/16.
//  Copyright (c) 2016 Victor Solonets. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SVMArtist.h"
@interface SVMGroup : SVMArtist

@property NSArray *listOfArtis;
- (instancetype) initWithName : (NSString*) newName andListOfSong : (NSArray*) newListSong andArtists : (NSArray*) newListArtists;

@end
