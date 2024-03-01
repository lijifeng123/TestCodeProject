//
//  ViewController.m
//  TTT
//
//  Created by lijifeng on 27.2.24.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController ()

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewIsAppearing:(BOOL)animated {
//    [super viewIsAppearing:animated];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
//    UIContentUnavailableConfiguration *emptyConfiguration = [UIContentUnavailableConfiguration emptyConfiguration];
//    emptyConfiguration.text = @"空的";
//    emptyConfiguration.image = [UIImage imageNamed:@"aaa"];
//
//
//    UIContentUnavailableView *unv = [[UIContentUnavailableView alloc] initWithConfiguration:emptyConfiguration];
//    unv.frame = self.view.bounds;
//    self.contentUnavailableConfiguration = emptyConfiguration;
    
    
//    [self.view addSubview:unv];
//    UIButton *btn = [UIButton buttonWithConfiguration:[UIButtonConfiguration filledButtonConfiguration] primaryAction:[UIAction actionWithHandler:^(__kindof UIAction * _Nonnull action) {
//
//    }]];
//    UIButtonConfiguration *btnConfig = [UIButtonConfiguration filledButtonConfiguration];
//    btnConfig.title  = @"fsdafasd";
//    [btnConfig updatedConfigurationForButton:btn];
    
    
//    UIButton *bt = [UIButton buttonWithType:UIButtonTypeCustom];
//    [bt setTitle:@"fdsafa" forState:UIControlStateNormal];
//    [bt addTarget:self action:@selector(ttt) forControlEvents:UIControlEventTouchUpInside];
//    [btn updatedConfigurationForButton:bt];
    
}

- (void)ttt {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    change 1
    
//    UIImage *a = [ThirdManager thirdpartHeadImage];
    
// 准备rebase
    
    NSBundle *bundle = [NSBundle mainBundle];
    NSURL *url = [bundle URLForResource:@"SVProgressHUD" withExtension:@"bundle"];
    NSBundle *imageBundle = [NSBundle bundleWithURL:url];
    
    
    NSString *aa = [[NSBundle mainBundle] pathForResource:@"aaa" ofType:@"png"];
    UIImage *img = [UIImage imageWithContentsOfFile:aa];
//    NSCollectionLayoutSize *si = [NSCollectionLayoutSize sizeWithWidthDimension:[NSCollectionLayoutDimension fractionalWidthDimension:1] heightDimension:[NSCollectionLayoutDimension fractionalHeightDimension:2]];
//    // 设置collectionView的布局为流布局
//    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
////    [self.collectionView setCollectionViewLayout:flowLayout];
//    
//    self.collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
//    self.collectionView.backgroundColor = [UIColor redColor];
//    // 注册自定义的 UICollectionViewCell
//    [self.collectionView registerClass:[CustomCell class] forCellWithReuseIdentifier:@"MyCell"];
//    
//    [self.view addSubview:self.collectionView];
//    // 其他collectionView的设置...
//    self.collectionView.delegate = self;
//    self.collectionView.dataSource = self;
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10; // 设置你的cell数量
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MyCell" forIndexPath:indexPath];
    // 配置cell的内容
    cell.backgroundColor = [UIColor yellowColor];
    cell.label.text = [NSString stringWithFormat:@"column-%ld, row-%ld", indexPath.item, indexPath.row];
    return cell;
}

#pragma mark - UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    // 返回每个cell的大小，可以根据indexPath来动态设置
    if (indexPath.item % 2 == 0) {
        return CGSizeMake(100, 100); // 第偶数个cell的大小
    } else {
        return CGSizeMake(100, 200); // 第奇数个cell的大小
    }
}



@end
