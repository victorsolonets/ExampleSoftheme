//
//  SVMArtist.h
//  ExampleSoftheme
//
//  Created by System Administrator on 1/27/16.
//  Copyright (c) 2016 Victor Solonets. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SVMArtist : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSArray *listOfSong;

- (instancetype) initWithName : (NSString*) newName andListOfSong : (NSArray*) newList;

@end
