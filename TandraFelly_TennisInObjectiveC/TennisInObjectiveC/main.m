//
//  main.m
//  TennisInObjectiveC
//
//  Created by Ali Kooshesh on 1/22/14. Modified by Tandra Felly.
//  Copyright (c) 2014 Ali Kooshesh. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "Player.h"
#import "Game.h"
#import "GameScore.h"
#import "Match.h"
#import "MatchScore.h"
#import "Set.h"
#import "SetSCore.h"


int main(int argc, char * argv[]) // GIVEN FILE - MADE MODIFICATIONS
{
    @autoreleasepool
    {
        srandom(67);
        
        Player *player1 = [[Player alloc] initWithProbability: 70];
        
        Player *player2 = [[Player alloc] initWithProbability: 70];
        
        Match *match = [[Match alloc] initWithFirstPlayer:player1 secondPlayer:player2];
        
        MatchScore *winner = (MatchScore *) [match play: (player1)];
        
        MatchScore *mScore = winner;
        
        NSLog(@"%@", mScore);
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        
    }
}
