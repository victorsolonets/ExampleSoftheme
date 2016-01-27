//
//  NSArray+PrettyTextView.m
//  ExampleSoftheme
//
//  Created by System Administrator on 1/27/16.
//  Copyright (c) 2016 Victor Solonets. All rights reserved.
//

#import "NSArray+PrettyTextView.h"

@implementation NSArray (PrettyTextView)

- (NSString*) printPretty {
    NSMutableString* text = [NSMutableString new];
    for(id item in self){
        if([item class] == [SVMArtist class]){
            for(SVMArtist* artist in self){
                [text appendFormat:@"%@ - Artist \nList of songs: ", artist.name];
                for(SVMSong* song in artist.listOfSong){
                    [text appendFormat:@"\"%@\" ", song.name];
                }
                [text appendString:@"\n"];
                
            }
            return text;
        }
        
        if([item class] == [SVMArtist class]){
            for(SVMArtist* artist in self){
                [text appendFormat:@"%@ - Artist \n", artist.name];
                [text appendString:@"List of songs: "];
                for(SVMSong* song in artist.listOfSong){
                    [text appendFormat:@"\"%@\" ", song.name];
                }
                [text appendString:@"\n"];
            }
            return text;
        }
        
        if ([item class] == [SVMGroup class]){
            for(SVMGroup* group in self){
                [text appendFormat:@"%@ - Group \nList of Artists (", group.name];
                for(SVMArtist* artist in group.listOfArtis){
                    [text appendFormat:@"%@, ", artist.name];
                }
                [text appendString:@") \nList of songs ("];
                for(SVMSong* song in group.listOfSong){
                    [text appendFormat:@"\"%@\" ", song.name];
                }
                [text appendString:@") \n"];
                
            }
            return text;
        }
    }
    return @"Wrong write";
    
}

@end