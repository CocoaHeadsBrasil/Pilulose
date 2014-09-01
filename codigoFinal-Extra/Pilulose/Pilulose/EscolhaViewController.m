//
//  EscolhaViewController.m
//  Pilulose
//
//  Created by George Villasboas on 8/27/14.
//  Copyright (c) 2014 CocoaHeads Brasil. All rights reserved.
//

#import "EscolhaViewController.h"

@interface EscolhaViewController ()

@end

@implementation EscolhaViewController

#pragma mark -
#pragma mark Getters overriders

#pragma mark -
#pragma mark Setters overriders

- (void)setNome:(NSString *)nome
{
    _nome = [nome stringByAppendingString:@","];
}

#pragma mark -
#pragma mark Designated initializers

#pragma mark -
#pragma mark Public methods

#pragma mark -
#pragma mark Private methods

#pragma mark -
#pragma mark ViewController life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Veicula o model ao label (view)
    self.nomeLabel.text = self.nome;
    
    // esconde barra de navegacao para melhor UI
    [self.navigationController setNavigationBarHidden:NO animated:NO];
}

#pragma mark -
#pragma mark Overriden methods

#pragma mark -
#pragma mark Storyboards Segues

#pragma mark -
#pragma mark Target/Actions

#pragma mark -
#pragma mark Delegates

#pragma mark -
#pragma mark Notification center


@end
