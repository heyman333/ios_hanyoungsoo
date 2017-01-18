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
    
    
    [sosu setHealth:300];
    [babarian setHealth:400];
    NSInteger babarianDam = 30;
    NSInteger sosuDam = 30;
    NSInteger num = 1;
    
    NSLog(@"--------전투 시작!--------");
    NSLog(@"바바리안의 풀체력은 %lu 입니다.", [babarian health]);
    NSLog(@"소서리스의 풀체력은 %lu 입니다.", [sosu health]);

    
    while (true) {
        
        babarianDam += 5;
        sosuDam += 27;
        NSLog(@"");
        NSLog(@"--------%lu 번째 싸움 --------", num++ );
        
        
        [babarian physicalAttack:sosu howDam:babarianDam++];
        
        if([sosu health]>0){
            NSLog(@"소서리스의 체력은 %lu 입니다.", [sosu health]);
        }
        
        
        if([sosu health]<=0){
            NSLog(@"소서리스가 사망했습니다.");
            NSLog(@"전투가 종료 됐습니다.");
            break;
        }
        
        [sosu magicalAttack:babarian howDam:sosuDam++];
        if([babarian health] >= 0){
            NSLog(@"바바리안의 체력은 %lu 입니다.", [babarian health]);
        }
        
        
        if([babarian health]<=0){
            NSLog(@"바바리안이 사망했습니다.");
            NSLog(@"-----전투가 종료 됐습니다-----");
            break;
        }
        
    }
    
    return 0;
    
}
