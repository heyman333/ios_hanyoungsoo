//
//  main.m
//  MyThirdIos
//
//  Created by HanYoungsoo on 2017. 1. 17..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizard.h"
#import "Person.h"
#import <AFNetworking.h>


int main(int argc, const char * argv[]) {
    
    Warrior *babarian =  [[Warrior alloc] init];
    //    Person *soo =  [Person new];
    Wizard *sosu =  [Wizard new];
    [sosu setName:@"소서리스"];
    [babarian setName:@"바바리안"];
    
    
    //    [babarian megicalAttatk:@"100"];
    //    [babarian megicalAttatk:@"300"];
    //    [babarian skill:@"30" healthUp:@"100"];
    //    [babarian skill:@"50" healthUp:@"140"];
    
    
    [sosu setHealth:500];
    [babarian setHealth:600];
    NSInteger babarianDam = 0;
    NSInteger sosuDam = 0;
    NSInteger num = 1;
    NSInteger babaluck = 0;
    NSInteger sosuluck = 0;
    NSLog(@"               ⚔️ 전투 시작 ⚔️");
    NSLog(@"바바리안의 풀체력은 %lu 입니다. ", [babarian health]);
    NSLog(@"소서리스의 풀체력은 %lu 입니다.", [sosu health]);
    
    while (true) {
        
        babarianDam = (arc4random() % 110);
        sosuDam = (arc4random() % 140);
        babaluck = (arc4random() % 10);
        sosuluck = (arc4random() % 10);
        
        NSLog(@"");
        NSLog(@"               %lu 번째 싸움 ⚔️", num++ );
        
        if(babaluck < 4 && [babarian health]< 300){
            NSLog(@"바바리안이 물약을 먹었습니다.💖 HP + 50 (HP:%lu) ", babarian.health += 50);
        }
        
        if(sosuluck < 4 && [sosu health]< 300){
            NSLog(@"소서리스가 물약을 먹었습니다.💖 HP + 50 (HP:%lu) ", sosu.health += 50);
        }
        
        if(sosuluck > 2){
            if(babarianDam>100){
                NSLog(@"               😎 Critical 😎  ");
            }
            [babarian physicalAttack:sosu howDam:babarianDam];
            
            if([sosu health] > 0){
                NSLog(@"소서리스의 체력은 %lu(HP - %lu) 입니다.", [sosu health] , babarianDam);
            }
        }
        else{
            NSLog(@"바바리안: 공격 MISS 💦");
        }
        
        
        if([sosu health]<=0){
            NSLog(@"소서리스가 사망했습니다.💔");
            NSLog(@"               -----전투가 종료 됐습니다-----");
            break;
        }
        
        
        if(babaluck > 2){
            if(sosuDam>100){
                NSLog(@"               😎 Critical 😎  ");
            }
            [sosu magicalAttack:babarian howDam:sosuDam];
            if([babarian health] > 0){
                NSLog(@"바바리안의 체력은 %lu(HP - %lu) 입니다.", [babarian health], sosuDam);
            }
        }
        else{
                NSLog(@"소서리스: 공격 MISS 💦");
            }
            
            if([babarian health]<=0){
                NSLog(@"바바리안이 사망했습니다. 💔");
                NSLog(@"              -----전투가 종료 됐습니다-----");
                break;
            }
            
        [NSThread sleepForTimeInterval:3];

        
    }
    
          return 0;
}
