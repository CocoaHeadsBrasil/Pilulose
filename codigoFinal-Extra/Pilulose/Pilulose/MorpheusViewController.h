//
//  MorpheusViewController.h
//  Pipulose
//
//  Created by George Villasboas on 8/27/14.
//  Copyright (c) 2014 CocoaHeads Brasil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MorpheusViewController : UIViewController

///---------------------------------------
/// @name MODELS
///---------------------------------------

///---------------------------------------
/// @name VIEWS
///---------------------------------------

@property (weak, nonatomic) IBOutlet UIImageView *morpheusImageView;
@property (weak, nonatomic) IBOutlet UITextField *nomeTextField;
@property (weak, nonatomic) IBOutlet UILabel *instrucoesLabel;
@property (weak, nonatomic) IBOutlet UIButton *maoEsquerdaButton;
@property (weak, nonatomic) IBOutlet UIButton *maoDireitaButton;
@end
