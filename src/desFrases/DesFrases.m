//
//  DesFrases.m
//  desFrases
//
//  Created by vinicius quaiato on 6/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DesFrases.h"


@implementation DesFrases

- (id)init {
    if ((self = [super init])) {
        desFrases = [[NSArray alloc]initWithObjects: 
                     @"Dê um passo de cada vez, pois não tem como dar dois",
                     @"A vitória é algo que os perdedores não conhecem", 
                     @"Depois da tempestade ela sempre termina",
                     @"As dificuldades são difíceis",
                     @"A morte é o fim da vida",
                     @"A maioria de nossas importações vem de fora do país",
                     @"Existem países no exterior",
                     @"Na história da humanidade existem muitos humanos",
                     @"Ao decorrer dos anos o tempo se passou",
                     @"As piores coisas da vida não são as melhores",
                     @"Na escuridÃo sempre há ausência de luz",
                     @"Ir embora é deixar algum lugar",
                     nil                         
                     ];
    }
    return self;
}

- (NSString*) proximaDesFrase{
    int index = arc4random() % [desFrases count];
    return [desFrases objectAtIndex:index];
}

- (void)dealloc
{
    [desFrases dealloc];
    [super dealloc];
}
@end
