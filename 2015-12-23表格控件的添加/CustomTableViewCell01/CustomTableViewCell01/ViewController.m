//
//  ViewController.m
//  CustomTableViewCell01
//
//  Created by 于苗 on 15/12/23.
//  Copyright © 2015年 yumiao. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"
#import "CustomCell02.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, self.view.bounds.size.height-20) style:UITableViewStylePlain];
    tableView.dataSource =self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    /*CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell==nil)
    {
        cell = [[CustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.headerImageView.image = [UIImage imageNamed:@"1.jpg"];
    cell.titleLabel.text = @"title";
    [cell.btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];*/
    
    /*UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell==nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }*/
    CustomCell02 *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell==nil)
    {
//        NSBundle是一个可以获取工程中文件的类，Bundle束或者捆    loadNibNamed是加载xib文件的名字
       NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"CustomCell02" owner:nil options:nil];
//        数组的快速遍历方式
//        for (<#type *object#> in <#collection#>) {
//            <#statements#>
//        }
        
//        for (int i = 0; i<array.count; i++)
//        {
//            id temp = array[i];
//            if ([temp isKindOfClass:[CustomCell02 class]])
//            {
//                cell = temp;
//            }
//        }
        for (id tempCell in array)
        {
//            [@"123" isEqualToString:@""];
//            isKindOfClass判断两个类是否相等。
            if ([tempCell isKindOfClass:[CustomCell02 class]])
            {
                cell = tempCell;
                break;
            }
        }
    }
    cell.headerImageView.image = [UIImage imageNamed:@"1.jpg"];
    cell.titleLabel.text = @"123";
    [cell.btn addTarget:self action:@selector(btnCLickSelector:) forControlEvents:UIControlEventTouchUpInside];
//    return后面的代码是不执行的。
    return cell;
//    NSLog(@"------");
}
-(void)btnClick:(UIButton *)btn
{
    NSLog(@"点击btn了");
}
-(void)btnCLickSelector:(UIButton *)btn
{
    NSLog(@"btnCLickSelector");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
