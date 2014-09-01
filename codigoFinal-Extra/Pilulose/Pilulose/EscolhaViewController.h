//
//  EscolhaViewController.h
//  Pilulose
//
//  Created by George Villasboas on 8/27/14.
//  Copyright (c) 2014 CocoaHeads Brasil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EscolhaViewController : UIViewController

///---------------------------------------
/// @name MODELS
///---------------------------------------

@property (strong, nonatomic) NSString *nome;

///---------------------------------------
/// @name VIEWS
///---------------------------------------

@property (weak, nonatomic) IBOutlet UILabel *nomeLabel;

@end
