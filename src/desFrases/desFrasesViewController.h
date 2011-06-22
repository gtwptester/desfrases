//
//  desFrasesViewController.h
//  desFrases
//
//  Created by vinicius quaiato on 6/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DesFrases.h"

@interface desFrasesViewController : UIViewController {
    DesFrases *frases;
}

@property (nonatomic, retain) IBOutlet UILabel *desFrase;
//@property (nonatomic,retain) DesFrases *frases;

- (IBAction)proximaDesFrase: (id)sender;

@end
