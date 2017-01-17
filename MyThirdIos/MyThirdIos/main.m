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
    Person *soo =  [Person new];
    Wizard *sosu =  [Wizard new];

    
    babarian.health = 90;
    babarian.mana = 20;
    babarian.physicalPower = @100;

    soo.name = @"Han Young soo";
    
    sosu.health = 20;
    sosu.mana = 80;
    
    NSLog(@"My name is %@", soo.name);
    NSLog(@"babarian health: %d , babarian mana : %d", babarian.health, babarian.mana);
    NSLog(@"sosu health: %d , sosu mana : %d", sosu.health, sosu.mana);
    
    NSLog(@"바바리안의 공격력은 %@ 입니다.", babarian.physicalPower);
    
    [soo talk];
    [soo sayMyName];
    [babarian magicalAttack];
    [babarian heathPlus];
    NSLog(@"babarian health: %d , babarian mana : %d", babarian.health, babarian.mana);
    [sosu health];
    [sosu setHealth:300];
  
    NSLog(@"babarian health: %d , babarian mana : %d", sosu.health, sosu.mana);
    NSLog(@"바바리안의 마력을 200으로 채웁니다");
    [babarian setMana:200];
    [babarian magicalAttack];
     NSLog(@"babarian health: %d , babarian mana : %d", babarian.health, babarian.mana);
    
    return 0;
}
