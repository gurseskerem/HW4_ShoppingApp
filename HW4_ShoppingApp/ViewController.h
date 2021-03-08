//
//  ViewController.h
//  HW4_ShoppingApp
//
//  Created by Kerem Gurses on 8.03.2021.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic,strong) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *items;
@property (nonatomic,strong) IBOutlet UITextField *textField;

@end

