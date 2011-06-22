//
//  desFrasesViewController.m
//  desFrases
//
//  Created by vinicius quaiato on 6/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "desFrasesViewController.h"

@implementation desFrasesViewController
@synthesize desFrase;

-(IBAction)proximaDesFrase:(id)sender{
    
    desFrase.text = @"Depois do primeiro passo dê o segundo.";
}

- (void)dealloc
{
    [desFrase dealloc];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle
- (void)viewDidUnload
{
    [super viewDidUnload];
    self.desFrase = nil;
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;//(interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
