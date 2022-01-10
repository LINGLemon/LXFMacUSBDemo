//
//  LXFDeviceCollectionViewItem.m
//  LXFMacHidDemo
//
//  Created by 凌煊峰 on 2022/1/10.
//

#import "LXFDeviceCollectionViewItem.h"

@interface LXFDeviceCollectionViewItem ()

@property (weak) IBOutlet NSTextField *nameTextField;
@property (weak) IBOutlet NSImageView *isSelectedImageView;
@property (assign, nonatomic) BOOL isSelected;

@end

@implementation LXFDeviceCollectionViewItem

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)setDeviceName:(NSString *)deviceName withIsSelected:(BOOL)isSelected {
    _nameTextField.stringValue = deviceName;
    _isSelected = isSelected;
    if (_isSelected) {
        _isSelectedImageView.image = [NSImage imageNamed:@"selected"];
    } else {
        _isSelectedImageView.image = [NSImage imageNamed:@"unselected"];
    }
}

- (void)touchesBeganWithEvent:(NSEvent *)event {
    _isSelected = !_isSelected;
    if (_isSelected) {
        _isSelectedImageView.image = [NSImage imageNamed:@"selected"];
    } else {
        _isSelectedImageView.image = [NSImage imageNamed:@"unselected"];
    }
    NSLog(@"1111111");
}

@end
