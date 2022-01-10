//
//  LXFDeviceCollectionViewItem.h
//  LXFMacHidDemo
//
//  Created by 凌煊峰 on 2022/1/10.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@protocol LXFDeviceCollectionViewItemDelegate <NSObject>

@optional
- (void)didSelectedDeviceItem;

@end

@interface LXFDeviceCollectionViewItem : NSCollectionViewItem

@property (weak, nonatomic) id<LXFDeviceCollectionViewItemDelegate> delegate;

- (void)setDeviceName:(NSString *)deviceName withIsSelected:(BOOL)isSelected;

@end

NS_ASSUME_NONNULL_END
