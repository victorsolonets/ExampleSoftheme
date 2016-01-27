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
        
        SVMSong *songSugar = [[SVMSong alloc] initWithSongName:@"Sugar" newArtist:@"SOAD" andText:@"The kombucha mushroom people,\nSitting around all day,\nWho can believe you,\nWho can believe you"];
        
        SVMSong *songKnow = [[SVMSong alloc] initWithSongName:@"Know" newArtist:@"SOAD" andText:@"Cursed Earth, Cursed Earth, Cursed Earth, Cursed Earth.\nI will never feed off the evergreen luster of your heart\nAll because we all live in the valley of the walls\nWhen we speak we can peak from the windows of their mouths"];
        
        SVMSong *songKray = [[SVMSong alloc] initWithSongName:@"Родны Край" newArtist:@"Brutto" andText:@"Родны, родны, родны край\nЯ табе вораг - мяне не чакай,\nРодны, родны, родны брат\nБойся мяне - я злодзей ды кат\nРодная, родная, родная маці\n - ваўкалак, хавайся ў хаце,\nРодны, родны, родны бацька\nСын звар'яцеў - ня трэба чакаць яго"];
        
        SVMSong *songIGetWet = [[SVMSong alloc] initWithSongName:@"I get wet" newArtist:@"Brutto" andText:@"You watch what I say\n(Watch what I Say)\nWatch what I do\nBecause I really don't care."];
        
        SVMArtist *artistThree = [[SVMArtist alloc] initWithName:@"Sergey Mikhalok" andListOfSong:@[songIGetWet, songKray]];
        SVMArtist *artistFour = [[SVMArtist alloc] initWithName:@"Vitaliy Gurkov" andListOfSong:@[songIGetWet, songKray]];
        SVMArtist *artistFive = [[SVMArtist alloc] initWithName:@"Serj Tankian" andListOfSong:@[songSugar, songKnow]];
        SVMArtist *artistSix = [[SVMArtist alloc] initWithName:@"Daron Malakian" andListOfSong:@[songSugar, songKnow]];
        
        
        
        SVMGroup *bruttoGroup = [[SVMGroup alloc] initWithName: @"Brutto" andListOfSong:@[songKray,songIGetWet] andArtists:@[artistFour, artistThree]];
        
        SVMGroup *soadGroup = [[SVMGroup alloc] initWithName:@"SOAD" andListOfSong:@[songKnow, songSugar] andArtists:@[artistSix, artistFive]];
        
        NSArray *groups = @[soadGroup, bruttoGroup];
        NSLog([groups printPretty]);
    }
    return 0;
}
