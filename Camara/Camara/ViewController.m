//
//  ViewController.m
//  Camara
//
//  Created by Developer Cymetria on 14/03/15.
//  Copyright (c) 2015 Cymetria. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        UIAlertView * error = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Tu dispositivo no tiene camara disponible" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles: @"Cancelar", nil];
        [error show];
        _cameraButton.enabled = NO;

    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)takePhotoCamera:(id)sender {
    UIImagePickerController * camara = [[UIImagePickerController alloc] init];
    camara.delegate = self;
    camara.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:camara animated:YES completion:nil];
    
}

- (IBAction)takePhotoGallery:(id)sender {
    UIImagePickerController * seleccionarFoto = [[UIImagePickerController alloc] init];
    seleccionarFoto.delegate = self;
    seleccionarFoto.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:seleccionarFoto animated:YES completion:nil];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage * imagenCapturada = info[UIImagePickerControllerOriginalImage];
    _foto.image = imagenCapturada;
    
    [self dismissViewControllerAnimated:YES completion:nil];

}
@end
