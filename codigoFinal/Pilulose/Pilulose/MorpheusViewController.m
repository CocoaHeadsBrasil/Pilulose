//
//  MorpheusViewController.m
//  Pipulose
//
//  Created by George Villasboas on 8/27/14.
//  Copyright (c) 2014 CocoaHeads Brasil. All rights reserved.
//

#import "MorpheusViewController.h"
#import "EscolhaViewController.h"

@interface MorpheusViewController ()
@end

@implementation MorpheusViewController

#pragma mark -
#pragma mark Getters overriders

#pragma mark -
#pragma mark Setters overriders

#pragma mark -
#pragma mark Designated initializers

#pragma mark -
#pragma mark Public methods

#pragma mark -
#pragma mark Private methods

/**
 *  Mostra a UI de pilulas
 */
- (void)mostraPilulas
{
    
    self.maoEsquerdaButton.alpha = 0.0;
    self.maoDireitaButton.alpha = 0.0;
    
    self.maoEsquerdaButton.hidden = NO;
    self.maoDireitaButton.hidden = NO;
    
    self.morpheusImageView.alpha = 1.0;
    
    [UIView animateWithDuration:0.8 animations:^{
        self.maoEsquerdaButton.alpha = 1.0;
        self.maoDireitaButton.alpha = 1.0;
        
        self.nomeTextField.alpha = 0.0;
        
        self.instrucoesLabel.alpha = 0.0;
        
    } completion:^(BOOL finished) {
        
        self.instrucoesLabel.text = @"Escolha sua pílula";
        
        [UIView animateWithDuration:0.8 animations:^{
            self.instrucoesLabel.alpha = 1.0;
        } completion:nil];
        
    }];
}

/**
 *  Esconde a UI de pilulas
 */
- (void)escondePilulas
{
    self.maoEsquerdaButton.alpha = 1.0;
    self.maoDireitaButton.alpha = 1.0;
    
    self.maoEsquerdaButton.hidden = YES;
    self.maoDireitaButton.hidden = YES;
    
    self.morpheusImageView.alpha = 0.3;
    
    self.instrucoesLabel.alpha = 0.0;
    self.nomeTextField.alpha = 0.0;
    
    [UIView animateWithDuration:0.8 animations:^{
        self.maoEsquerdaButton.alpha = 0.0;
        self.maoDireitaButton.alpha = 0.0;
    } completion:^(BOOL finished) {
        self.instrucoesLabel.text = @"Qual é o seu nome?";
        
        [UIView animateWithDuration:0.8 animations:^{
            self.instrucoesLabel.alpha = 1.0;
            self.nomeTextField.alpha = 1.0;
        } completion:nil];
    }];
}

#pragma mark -
#pragma mark ViewController life cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:YES animated:NO];
    
    self.nomeTextField.text = @"";
    
    [self escondePilulas];
}

#pragma mark -
#pragma mark Overriden methods


#pragma mark -
#pragma mark Storyboards Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EscolhaViewController *evc = (EscolhaViewController *)segue.destinationViewController;
    evc.nome = self.nomeTextField.text;
}

#pragma mark -
#pragma mark Target/Actions

#pragma mark -
#pragma mark Delegates

#pragma mark UITextField Delegates

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    NSString *texto = textField.text;
    
    if (![@"" isEqualToString:texto]) {
        [self mostraPilulas];
    }
    else{
        [self escondePilulas];
    }
    
    return YES;
}

#pragma mark -
#pragma mark Notification center

@end
