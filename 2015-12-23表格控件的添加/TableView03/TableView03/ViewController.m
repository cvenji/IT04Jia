//
//  ViewController.m
//  TableView03
//
//  Created by 于苗 on 15/12/23.
//  Copyright © 2015年 yumiao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    UITableView继承scrollView
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, self.view.bounds.size.height - 20) style:UITableViewStylePlain];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
//    separator分割，设置表的分割线的风格
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell==nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    UIImageView *imageView1 = [[UIImageView alloc]initWithFrame:CGRectMake(10,10, 50, 50)];
    imageView1.image = [UIImage imageNamed:@"3.jpg"];
    imageView1.layer.cornerRadius = 25;
//    layer 层    masksToBounds  是否允许切割
    imageView1.layer.masksToBounds = YES;
//    imageView1.clipsToBounds = YES;   
    
//    contentView     以后添加自己创建的控件要添加到cell的contentView上。
    [cell.contentView addSubview:imageView1];
    UILabel *nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(imageView1.frame.origin.x+imageView1.bounds.size.width, 15, 150, 40)];
    nameLabel.text = @"cell";
    [cell.contentView addSubview:nameLabel];
//    UIButtonTypeCustom这个类型的btn的标题颜色是白色的。
//    UITextField UIButton都继承UIControl
//    UITableViewCell继承UIView
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    btn.frame = CGRectMake(tableView.bounds.size.width - 100, 10, 100, 50);
    [cell.contentView addSubview:btn];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.tag = indexPath.row + 1;
//    cell.textLabel.text = @"cell";
//    这个属性是选中时的风格
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
//    accessory附属的附加的UITableViewCellAccessoryDisclosureIndicator类型是在最右边出现的一个灰色的小箭头
//    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
//    accessoryView这个属性是添加一些我自己需要的控件，他会出现在单元格的最右边。他是UIView类型的。
//    cell.accessoryView =
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    return 70;
}
-(void)btnClick:(UIButton *)btn
{
    if (btn.tag==1)//证明是行号为0的那行
    {
        NSLog(@"点击了第0行上面的btn");
    }
    else if (btn.tag==2)
    {
//        UIAlertView警告框
//        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"提示" message:@"圣诞节快到了！" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
////        将警告框弹出
//        [alertView show];
        /*********************/
   
//        第一个参数是弹出框的标题UIAlertControllerStyleAlert这个样式是警告框UIAlertControllerStyleActionSheet这个类型是从下面出来的弹出框
//        UIAlertController *alertControll = [UIAlertController alertControllerWithTitle:@"tips" message:@"今天雾很大" preferredStyle:UIAlertControllerStyleActionSheet];
////        UIAlertAction这个是警告框上面的按钮的类   第一个参数是按钮上面的标题   第二个参数是按钮的样式，有3种样式一种是默认的即确定按钮，第二种是取消，第三种是删除
//        UIAlertAction *sureBtn = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action)
//        {
//            NSLog(@"1234");
////          点击按钮时会触发的方法
//        }];
////        将按钮添加到弹出框上面
//        [alertControll addAction:sureBtn];
//        UIAlertAction *cancelBtn = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
//            
//            NSLog(@"点击取消按钮");
//        }];
//        [alertControll addAction:cancelBtn];
//        
//        UIAlertAction *deleteBtn = [UIAlertAction actionWithTitle:@"删除" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
//            NSLog(@"点击删除按钮");
//        }];
//        [alertControll addAction:deleteBtn];
//        [self presentViewController:alertControll animated:YES completion:nil];
//        /***以前的从下面弹出的弹出框＊*/
//        UIActionSheet *sheet = [[UIActionSheet alloc]initWithTitle:@"提示" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"删除" otherButtonTitles:@"确定", nil];
////        将弹出框显示到view上
//        [sheet showInView:self.view];
    
    }
    NSLog(@"点击调用了");
}
//这个是点击确定或取消时调用的代理方法可以根据buttonIndex的值来区分不同的按钮。

//- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
//{
//    NSLog(@"-----%ld--",buttonIndex);
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
