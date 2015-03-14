//
//  ViewController.h
//  Camara
//
//  Created by Developer Cymetria on 14/03/15.
//  Copyright (c) 2015 Cymetria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *foto;
- (IBAction)takePhotoCamera:(id)sender;
- (IBAction)takePhotoGallery:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *cameraButton;

@end

