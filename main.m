//
//  main.m
//  ExampleSoftheme
//
//  Created by System Administrator on 1/26/16.
//  Copyright (c) 2016 Victor Solonets. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SVMArtist.h"
#import "SVMSong.h"
#import "SVMGroup.h"
#import "NSArray+PrettyTextView.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SVMSong *songOne = [[SVMSong alloc] initWithSongName:@"Winter" newArtist:@"Joshua Radin" andText:@"I should know\nWho I am by now\nI walk\nThe record stands somehow\nThinking of winter"];
        SVMSong *songTwo = [[SVMSong alloc] initWithSongName:@"Friends Like you" newArtist:@"Joshua Radin" andText:@"I like the way you're not afraid\nYou got the world planned in your mind\nPeople say you cannot do well\nhey don't know a friend like you"];
        SVMSong *songThre = [[SVMSong alloc] initWithSongName:@"Mr. Jack" newArtist:@"SOAD" andText:@"Hey Mr. Jack\nIs that the mouth wash in your eyes?\nHey Mr. Jack\nIs that the cause of your surprise?"];
        SVMSong *songFour = [[SVMSong alloc] initWithSongName:@"I-E-A-I-A-I-O" newArtist:@"SOAD" andText: @"Peter's pecker picked another\nPickle bearing pussy pepper,\nPeter's pecker picked another\n      Pickle bearing pussy pepper, why?"];
        SVMArtist *artistOne = [[SVMArtist alloc] initWithName:@"Joshua Radin" andListOfSong:@[songOne,songTwo]];
        SVMArtist *artistTwo = [[SVMArtist alloc] initWithName:@"SOAD" andListOfSong:@[songThre, songFour]];
        
        NSArray *array = @[artistOne, artistTwo];
        NSLog(@"%@", [array printPretty]);
        [songTwo play];
    }
    return 0;
}
