//
//  WXZoomImage.m
//  AFNetworking
//
//  Created by 郑江荣 on 2019/1/2.
//

#import "WXZoomImage.h"
#import "LPPhotoViewer.h"
#import "farwolf.h"
#import <WeexPluginLoader/WeexPluginLoader.h>
WX_PlUGIN_EXPORT_MODULE(zoomImage, WXZoomImage)
@implementation WXZoomImage
@synthesize weexInstance;
WX_EXPORT_METHOD(@selector(show:))
WX_EXPORT_METHOD(@selector(dismiss))
-(void)show:(NSMutableArray*)array
{
    LPPhotoViewer *pvc = [[LPPhotoViewer alloc] init];
    pvc.imgArr = array;
    pvc.currentIndex = 0;
    pvc.indicatorType = IndicatorTypeNumLabel;
    [self.weexInstance.viewController.TopViewController presentViewController:pvc animated:YES completion:nil];
    
    
}
-(void)dismiss{
    
}
@end
