//
//  ViewController.m
//  SpriteKitIntro
//
//  Created by Renu P on 10/20/13.
//  Copyright (c) 2013 Renu Punjabi. All rights reserved.
//

#import "ViewController.h"
#import "StartUpScene.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Creating an instance of SKView
    SKView * skView = [[SKView alloc] initWithFrame:CGRectMake(0, 0, 600, 600)];
    
    //Setting frames per second property to be true
    skView.showsFPS = YES;
    
    //Setting count nodes property to be true because we want to know the number of nodes on the screen at any given time
    skView.showsNodeCount = YES;
    
    // Create and configure the scene.
    SKScene * scene = [StartUpScene sceneWithSize:skView.bounds.size];
    
    //SKSceneScaleModeAspectFill will make sure that your scene is scaled properly in all orientations
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    //Making the view controllers view a skview
    self.view = skView;
    
    // Present the scene.
    [skView presentScene:scene];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
