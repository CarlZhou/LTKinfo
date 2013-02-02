//
//  AppDelegate.m
//  三国杀info
//
//  Created by Zian Zhou on 2013-01-21.
//  Copyright (c) 2013 Zian Zhou. All rights reserved.
//

#import "AppDelegate.h"
#import "MasterViewController.h"
#import "LTKDoc.h"
#import "DataUtil.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        UISplitViewController *splitViewController = (UISplitViewController *)self.window.rootViewController;
        UINavigationController *navigationController = [splitViewController.viewControllers lastObject];
        splitViewController.delegate = (id)navigationController.topViewController;
    }
    
    LTKDoc *caocao = [[LTKDoc alloc] initWithTitle:@"曹操" rating:0 thumbImage:[UIImage imageNamed:@"caocao.jpg"] fullImage:[UIImage imageNamed:@"曹操.png"]];
    [caocao.info setObject:@"标准版" forKey:@"扩展"];
    [caocao.info setObject:@"魏国" forKey:@"势力"];
    [caocao.info setObject:@"四勾玉" forKey:@"体力"];
    [caocao.info setObject:@"魏武帝" forKey:@"称号"];
    [caocao.info setObject:@"WEI001" forKey:@"编号"];
    [caocao.info setObject:@"乱世的奸雄" forKey:@"战功"];
    [caocao.info setObject:@"曹操(155-220)字孟德，小字阿瞒，汉族，沛国谯县（安徽亳州）人。东汉末年著名政治家、军事家、文学家与书法家。三国中曹魏奠基人和主要缔造者，先为东汉大将军 、丞相，后为魏王。其子曹丕称帝后，追尊其为魏武帝。一生以汉朝丞相的名义征讨四方，为统一中原做出重大贡献，同时在北方广泛屯田，对当时的农业生产恢复有一定作用。曹操文学作品的特色、创新、开创对中国文学史的发展有着不可替代的重要作用，鲁迅先生评价其为\"改造文章的祖师\"。汉末书法评论家评出章草大家五人，即崔瑗、崔实、张芝、张昶、曹操。可谓多才多艺的一代霸主。" forKey:@"武将小传"];
    [caocao.info setObject:@"N/A" forKey:@"卡牌配文"];
    [caocao.info setObject:@"奸雄——你可以立即获得对你成伤害的牌。\n护驾——主公技，当你需要使用（或打出）一张【闪】时，你可以发动护驾。所有“魏”势力角色按行动顺序依次选择是否打出一张【闪】“提供”给你（然后视为由你使用或打出），直到有—名角色或没有任何角色决定如此做时为止。"
                             forKey:@"武将技"];
    [caocao.info setObject:@"护驾：魏将何在？/来人，护驾~ \n奸雄：宁教我负天下人，休教天下人负我！/孤好梦中杀人！\n阵亡：霸业未成…未成啊…"
                             forKey:@"武将台词"];
    [caocao.info setObject:@"★同一张牌的一次完整的结算中（包括因结算引发的其他事件）只能发动一次奸雄。\n[Q]【奸雄】技能是否在满足条件时必须发动？\n[A]【奸雄】不是锁定技，可以选择性发动。\n[Q]当锦囊牌对曹操造成伤害时，曹操获得哪张牌？\n[A]只获得相应的锦囊，例如曹操判定【闪电】受到伤害，可以将【闪电】收入手牌。\n[Q]角色A对角色B使用【借刀杀人】，要求B对曹操使用【杀】，若B使用了【杀】对曹操造成伤害，曹操获得哪张牌？\n[A]获得B使用的【杀】。\n[Q]角色发动武将技能对曹操造成伤害时，曹操拿哪张牌？\n[A]如果是被【刚烈】、【离间】、【雷击】等造成伤害，那么不能获得任何牌。如果是相关的技能消耗造成伤害，例如【流离】，【天香】等，则曹操获取伤害源打出或使用的相应牌。\n[Q]角色发动武器技能对曹操造成伤害，曹操获得哪张牌？\n[A]只获得相应的【杀】。\n例如：曹操被其他角色发动【青龙偃月刀】的技能伤害，只能获得该角色使用的最后的一张【杀】；曹操被其他角色发动【贯石斧】的技能伤害，只能获得该角色使用的那张【杀】，不能获得对方为了发动武器技能弃掉的牌；曹操被其他角色发动【丈八蛇矛】的技能伤害，可以获得该角色为了发动武器技能打出的两张手牌。\n[Q]曹操进入濒死状态时，是否可以发动【奸雄】技能获得导致曹操进入濒死状态的牌？\n[A]不可以，除非曹操被救回。\n例如：A角色对曹操使用【杀】，曹操受伤害进入濒死状态，如果没有角色对曹操使用【桃】，则曹操死亡，该【杀】进入弃牌堆。\n[Q]曹操发动【护驾】时，“魏”势力角色是否可以发动相关的武将或防具技能？\n[A]可以。\n例如甄姬可以发动【倾国】，“魏”势力角色可以发动【八卦阵】的技能进行判定。\n[Q]曹操发动【护驾】时，装备了【八卦阵】的“魏”势力角色可以发动几次【八卦阵】的技能？\n[A]曹操每次发动【护驾】，“魏”势力角色只能发动1次【八卦阵】的技能。\n[Q]曹操发动【护驾】时，装备了【八卦阵】的“魏”势力角色发动【八卦阵】的技能，判定牌为黑色，此时该角色是否可以从手中打出一张【闪】“提供”给曹操？\n[A]可以。\n[Q]吕布对曹操使用【杀】，曹操发动【护驾】，如果“魏”势力角色总共只“提供”了一张【闪】，如何结算？\n[A]若曹操此时自己再使用一张【闪】，则可以抵消吕布的【杀】；若曹操此时自己不能再使用一张【闪】，则受到该【杀】的伤害，“魏”势力角色“提供”的那张【闪】无效，不能收回。\n[Q]曹操受到连环传导的伤害时能否发动【奸雄】？\n[A]可以。\n[Q]有人使用【万箭齐发】，曹操发动【奸雄】技能后，小乔发动【天香】把伤害转移给曹操，曹操如何结算？\n[A]直接结算【天香】，同一张牌的一次完整的结算中（包括因结算引发的其他事件）只能发动一次奸雄。\n"
                            forKey:@"FAQ"];
    
    
    LTKDoc *guojia = [[LTKDoc alloc] initWithTitle:@"郭嘉" rating:0 thumbImage:[UIImage imageNamed:@"guojia.jpg"] fullImage:[UIImage imageNamed:@"郭嘉.png"]];
    LTKDoc *liubei = [[LTKDoc alloc] initWithTitle:@"刘备" rating:0 thumbImage:[UIImage imageNamed:@"liubei.jpg"] fullImage:[UIImage imageNamed:@"刘备.png"]];
    LTKDoc *simayi = [[LTKDoc alloc] initWithTitle:@"司马懿" rating:0 thumbImage:[UIImage imageNamed:@"simayi.jpg"] fullImage:[UIImage imageNamed:@"司马懿.png"]];
    LTKDoc *xiahoudun = [[LTKDoc alloc] initWithTitle:@"夏侯惇" rating:0 thumbImage:[UIImage imageNamed:@"xiahoudun.jpg"] fullImage:[UIImage imageNamed:@"夏侯惇.png"]];
    LTKDoc *xuchu = [[LTKDoc alloc] initWithTitle:@"许褚" rating:0 thumbImage:[UIImage imageNamed:@"xuchu.jpg"] fullImage:[UIImage imageNamed:@"许诸.png"]];
    LTKDoc *zhangliao = [[LTKDoc alloc] initWithTitle:@"张辽" rating:0 thumbImage:[UIImage imageNamed:@"zhangliao.jpg"] fullImage:[UIImage imageNamed:@"张辽.png"]];
    LTKDoc *zhenji = [[LTKDoc alloc] initWithTitle:@"甄姬" rating:0 thumbImage:[UIImage imageNamed:@"zhenji.jpg"] fullImage:[UIImage imageNamed:@"甄姬.png"]];
    
    self.characters = [NSMutableArray arrayWithObjects:caocao,guojia,liubei,simayi,xiahoudun,xuchu,zhangliao,zhenji, nil];
    
    
    [DataUtil sharedInstance].characters = self.characters;
    
    UINavigationController * navController = (UINavigationController *) self.window.rootViewController;
    navController.navigationBar.tintColor = [UIColor grayColor];
    MasterViewController * masterController = [navController.viewControllers objectAtIndex:0];
    masterController.characters = self.characters;
    
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
