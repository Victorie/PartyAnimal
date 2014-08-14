//
//  ViewController.h
//  PartyAnimal
//
//  Created by 李偉誠 on 7/2/14.
//  Copyright (c) 2014 Victoire. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleCast/GoogleCast.h>
#import "GTLYouTube.h"

@interface ViewController : UIViewController<GCKDeviceScannerListener,
                                             GCKDeviceManagerDelegate,
                                             GCKMediaControlChannelDelegate,
                                             UIActionSheetDelegate>
@end
