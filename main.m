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
        SVMSong *songOne = [SVMSong new];
        songOne.name = @"Brutto";
        songOne.artist = @"Mikhalok";
        songOne.text = @"Brutto, Brutto,\nBrutto, Brutto";
        SVMSong *songTwo = [SVMSong new];
        songOne.name = @"Friends Like you";
        songOne.artist = @"Joshua Radin";
        songOne.text = @"Friens you like...\nCan't explain and other ...";
        [artistOne setName : @"Mikhalok"];
        [artistOne setListOfSong:@[songOne,songTwo]];
        NSLog(@"%@",[artistOne name]);
        SVMArtist *artistTwo = [SVMArtist new];
        [artistTwo setName:@"Brutto"];
        NSLog(@"%@",[artistTwo name]);
        NSArray *array = @[artistOne, artistTwo];
        NSLog(@"%@", [array printPretty]);
        [songOne play];
    }
    return 0;
}
