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

- (void)viewDidLoad{
    frases = [[DesFrases alloc]init];
}

-(IBAction)proximaDesFrase:(id)sender{
    
    desFrase.text = [frases proximaDesFrase];
}

- (void)dealloc
{
    [desFrase dealloc];
    [frases dealloc];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.desFrase = nil;
    frases = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;//(interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
