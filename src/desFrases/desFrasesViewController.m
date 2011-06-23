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
@synthesize modelView;

- (void)viewDidLoad{
    frases = [[DesFrases alloc]init];
}

-(IBAction)proximaDesFrase:(id)sender{    
    desFrase.text = [frases proximaDesFrase];
}

- (void)dealloc {
    [desFrase dealloc];
    [frases dealloc];
    [modelView dealloc];
    [super dealloc];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    [super viewDidUnload];
    self.desFrase = nil;
    frases = nil;
    modelView = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation{
    return YES;
}

- (void) showSplash{
    UIViewController *modalViewController = [[UIViewController alloc] init];
    modalViewController.view = modelView;
    [self presentModalViewController:modalViewController animated:NO];
    [self performSelector:@selector(hideSplash) withObject:nil afterDelay:2.5];
}
-(void) hideSplash{
    [[self modalViewController] dismissModalViewControllerAnimated:YES];
}

@end
