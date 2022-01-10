//
//  MainWindowController.m
//  LXFMacHidDemo
//
//  Created by 凌煊峰 on 2022/1/10.
//

#import "LXFMainWindowController.h"
#import "LXFDeviceCollectionViewItem.h"
//#import "LXFHIDManager.h"

@interface LXFMainWindowController () <NSCollectionViewDataSource, NSCollectionViewDelegate>
@property (weak) IBOutlet NSCollectionView *deviceCollectionView;
@property (unsafe_unretained) IBOutlet NSTextView *terminalTextView;
@property (unsafe_unretained) IBOutlet NSTextView *inputTextView;

//@property (strong, nonatomic) LXFHIDManager *hidManager;

//临时打印下位机设备单词返回数据内容
@property (strong, nonatomic) NSMutableString *dataMStr;
//下位机设备多次返回 数据缓存
@property (strong, nonatomic) NSMutableData *cacheData;

@end

@implementation LXFMainWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
//    _hidManager = [LXFHIDManager sharedManager];
//    _hidManager.delegate = self;
    _dataMStr = [[NSMutableString alloc]init];
    _cacheData = [[NSMutableData alloc]init];
    
    _deviceCollectionView.dataSource = self;
    _deviceCollectionView.delegate = self;
    [_deviceCollectionView registerClass:[LXFDeviceCollectionViewItem class] forItemWithIdentifier:NSStringFromClass([LXFDeviceCollectionViewItem class])];
    
//    if (_hidManager) {
//        [_deviceCollectionView reloadData];
//    }
}

- (IBAction)connectBtnFunc:(id)sender {
    
}

- (IBAction)sendBtnFunc:(id)sender {
    
}

#pragma mark - NSCollectionViewDataSource

- (NSInteger)collectionView:(nonnull NSCollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

- (nonnull NSCollectionViewItem *)collectionView:(nonnull NSCollectionView *)collectionView itemForRepresentedObjectAtIndexPath:(nonnull NSIndexPath *)indexPath {
    LXFDeviceCollectionViewItem *item = [collectionView makeItemWithIdentifier:NSStringFromClass([LXFDeviceCollectionViewItem class]) forIndexPath:indexPath];
    return item;
}

#pragma mark - NSCollectionViewDelegate

- (void)collectionView:(NSCollectionView *)collectionView didSelectItemsAtIndexPaths:(NSSet<NSIndexPath *> *)indexPaths {
    [collectionView deselectItemsAtIndexPaths:indexPaths];
    
    
}

@end
