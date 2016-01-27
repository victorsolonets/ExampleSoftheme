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
        SVMArtist *artistOne = [SVMArtist new];
        SVMSong *songOne = [[SVMSong alloc] initWithSongName:@"Winter" newArtist:@"Joshua Radin" andText:@"I should know\nWho I am by now\nI walk\nThe record stands somehow\nThinking of winter"];
        SVMSong *songTwo = [[SVMSong alloc] initWithSongName:@"Friends Like you" newArtist:@"Joshua Radin" andText:@"I like the way you're not afraid\nYou got the world planned in your mind\nPeople say you cannot do well\nhey don't know a friend like you"];
        [artistOne setListOfSong:@[songOne,songTwo]];
        [artistOne setName:@"Joshua Radin"];
        NSLog(@"%@",[artistOne name]);
        SVMArtist *artistTwo = [SVMArtist new];
        [artistTwo setName:@"Brutto"];
        NSLog(@"%@",[artistTwo name]);
        NSArray *array = @[artistOne, artistTwo];
        NSLog(@"%@", [array printPretty]);
        [songTwo play];
    }
    return 0;
}
