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
-(void)show:(NSMutableDictionary*)p
{
    NSMutableArray*array=p[@"list"];
    int index=0;
    if([p objectForKey:@"index"])
        index=[@"" add:p[@"index"]].intValue;
    LPPhotoViewer *pvc = [[LPPhotoViewer alloc] init];
    pvc.imgArr = array;
    pvc.currentIndex = index;
    pvc.indicatorType = IndicatorTypeNumLabel;
    [self.weexInstance.viewController.TopViewController presentViewController:pvc animated:YES completion:nil];
    
    
}
-(void)dismiss{
    
}
@end
