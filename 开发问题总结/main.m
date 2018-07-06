//
//  main.m
//  开发问题总结
//
//  Created by HalseyMac on 14/12/20.
//  Copyright (c) 2015年 张豪. All rights reserved.
//
/**
*********************************************开发问题目录*************************************************
 
 1 >  二维码(扫描) :(问题遇到次数 : 1)
 2 >  二维码(生成) :(问题遇到次数 : 1)
 3 >  C99之类错误解决方法: (问题遇到次数 : 1)
 4 >  模拟器运行不了解决方法: (问题遇到次数 : 2)
 5 >  纯代码工程的生成 (问题遇到次数 : 5)
 6 >  登录注册的写法 (问题遇到次数 : 1)
 7 >  横屏显示(程序所有的界面都横屏)  (问题遇到次数 : 1)
 8 >  .pch文件的用法 (问题遇到次数 : 2)
 9 >  真机调试的时候出现 App installation failed
        There was an internal API error (问题出现次数 : 2)
 10 > 修改在真机上app的名称以及桌面上的图标 (问题遇到次数 : 3)
 11 > Btn选中状态跟不选中状态下图片也不一样  (问题遇到次数 : 2)
 12 > NavigationBar挡住了视图 (问题遇到次数 : 1)
 13 > 动画效果的实现 (问题遇到次数 : 3)
 14 > 真机调试出现std::basic_string/std::string::find
        "std::ios_base::Init::Init()", referenced from:类的错误  (问题碰到次数 : 2)
 15 > 横竖屏的显示   (问题碰到次数 : 3)
 16 > 程序一个界面上如果有两个tableView,解决方法  (问题遇到次数 : 1)
 17 > 在5s模拟器运行的时候会显示不全(上下黑边), 显示的界面是4/4s界面的大小 (问题遇到次数 : 2)
 18 > 升级Xcode, 真机调试出现下列问题  (问题遇到次数 : 4)
            linker command failed with exit code 1 (use -v to see invocation)
 19 > 提交项目到App Store出现的问题总结  (问题遇到次数 : 1)
 20 > 提交app审核遭到拒绝问题总结    (问题遇到次数 : 1)
 21 > 运行程序的时候NSLog的地方有下面的打印,并且打印出加载出现错误(访问http资源，测试时碰到如下报错)(问题碰到次数 : 1);
         NSLog的地方打印是这个 : App Transport Security has blocked a cleartext HTTP (http://) resource load
 22 > 横竖屏的总结   (问题碰到次数 : 2)
 23 > 获得当前View所在的控制器 (问题碰到次数 : 3)
 24 > 真机调试出现 Could not launch “XXX” process launch failed: Security (问题碰到次数 : 2)
 25 > 音乐类播放器后台继续运行唱歌 (问题碰到次数 : 1)
 26 > 在蒲公英上发布内部版本打.ipa包的时候出现 No matching provisioning profile found: Your build settings specify a provisioning profile with the UUID, however, no such provisioning profile was found.(就是发现不了UUID)  (问题遇到次数 : 1)
 27 > 程序打包成.ipa文件步骤 以及上传到app store上(问题遇到次数 : 2)
 28 > 忽略导航栏的高度,将零点坐标变成 (0, 导航栏高度) 这个坐标 (问题碰到次数 : 2)
 29 > 经常用到的宏的定义 (问题遇到次数 : 1)
 30 > 判断程序是不是第一次打开 (问题遇到次数 : 2)
 31 > GitHub上传代码,以及删除上传的代码步骤 (问题遇到次数 : 2)
 32 > 在真机上运行程序出现 App installation failed   (问题遇到次数 : 1)
                       A valid provisioning profile for this executable was not found.
 33 > 通知中心(NSNotificationCenter)的应用 三步骤 (问题碰到次数 : 2)
 34 > iOS 10的一些权限问题令程序崩溃解决 (问题遇到次数 : 2)
 35 > 取视图的子视图比如label等, 然后可以给子视图赋值
 36 > MAC电脑远程桌面Windows电脑步骤(包括详细配置,文件传输)
 37 > 宏定义实现接口拼接, 方便修改主机地址
 38 > Coding和码云创建仓库提交代码步骤
 39 > 关于viewWillAppear和viewDidAppear调用super方法的时候写法
 
 40 > 在github上上传多个文件夹, 每个文件夹里面有一个项目
 
 
 
********************************************开发问题目录**************************************************
 
*/


/******************************************开发问题解决方法***********************************************/
        
// 1> 二维码(扫描) :(问题遇到次数 : 1)
        /*
     引入扫描二维码的三方库程序报错(错误如下显示):
     Undefined symbols for architecture x86_64:
     "_OBJC_CLASS_$_ZBarReaderViewController", referenced from:
     objc-class-ref in ViewController.o
     "_ZBarReaderControllerResults", referenced from:
     -[ViewController imagePickerController:didFinishPickingMediaWithInfo:] in ViewController.o
     ld: symbol(s) not found for architecture x86_64
     clang: error: linker command failed with exit code 1 (use -v to see invocation)
     
     解决方法:Build Settings 里面的 Architectures的Valid Architectures里面要去掉arm64支持, Deployment Target 调成7.0(可以支持的范围内)
     */
// 2> 二维码(生成): (问题遇到次数 : 1)
        /*
        引入libqrencode库文件

        在新工程中导入以下框架：AVFoundation.framework、
                CoreMedia.framework、
                CoreVideo.framework、
                QuartzCore.framework、
                libiconv.dylib
                将libqrencode源码加入工程；
        需要使用的页面.m文件中引用头文件#import "QRCodeGenerator.h"；
*/
// 3> C99之类错误解决方法: (问题遇到次数 : 1)
        /*
         
         Build Settings --> C language Dialect里面的几个修改下 GNU89[-std=gun89]或者改成其他的, 视情况而定
         
         */
// 4> 模拟器运行不了解决方法: (问题遇到次数 : 2)
        /*
         1 > 报错信息 :
         The file “TPKeyboardAvoidingSample” couldn’t be opened because you don’t have permission to view it.(大概意思就是没有经过许可)
         解决方法 : Project--->Build Setting--->Build Options中的Compiler for C/C++/Object-C后面的内容改成Default compiler(Apple LLVM 6.1);

         */
// 5> 纯代码工程的生成 (问题遇到次数 : 4)
        /*
         
         升级xcode6之后，直接建立Empty工程后发现，这是太坑，真的是什么都没有啊。只能换个方法了
         总结如下：
         1.新建一个single view application
         2.打开 Info.plist（别告诉我不知道去哪里找info.plist），删除里面的 Launch screen interface file base name以及 Main Main storyboard file base name
         3.删除Main.storyboard以及LaunchScreen.xib
         4.在AppDelegate.m修改如下
         self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
         [self.window makeKeyAndVisible];
         return YES;
         
         */
// 6> 登录注册的写法 (问题遇到次数 : 1)
        /*
         
         1 > 首先在AppDelegate的didFinishLaunching方法中把我们的窗口的根视图设置成登录界面
                // 程序一进来首先是登录界面, 在登录界面在调用代理 然后创建tabBar等东西
                LoginController *ZHlogin = [[LoginController alloc]init];
                self.window.rootViewController = ZHlogin;
         
         2 > 然后再在需要跳转地方填写如下代码 (记得导入头文件#import "AppDelegate" 以及自定义的tabBar)
                // 登录成功后进入这里
                MyTabBarController *zhmvc = [[MyTabBarController alloc]init]; // 初始化我们自定义的tabBar
                // 创建一个代理对象为我们的程序的代理
                AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
                // 给我们这个程序的代理设置根视图控制器
                app.window.rootViewController = zhmvc;  // 跳转的时候把根视图换成我们自定义的tabBar
         
         */
// 7> 横屏显示(程序所有的界面都横屏)  (问题遇到次数 : 3)
        /*
         
         1 > 在程序运行出来的最开始的界面(一般就是登陆注册界面)加入以下方法
                - (NSUInteger)supportedInterfaceOrientations{
                    return UIInterfaceOrientationMaskLandscape;
                }
         2 > 并且横屏显示后, 在iOS7以后程序的高跟宽也相互交换了(这个很有用, 不用再担心程序的高跟宽不互换带来的不方便的计算)
         
         3 > 在APPDelegate里面加上下面的代码 (*************这个方法很有用的*************)
                - (NSUInteger)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window
                {
                return UIInterfaceOrientationMaskLandscapeLeft;
                }

         */
// 8> .pch文件的创建以及应用 (问题遇到次数 : 2) .pch跟Header File这两种都是常用的批量导入头文件方法
        /*
         
         1 > pch 全名是 : precompiled header(预编译头文件的意思) 在这里面可以定义一些宏, 一些头文件, 这里面定义的这些宏跟
         头文件是全局的也就是整个工程都可以用的, 不用在重新写宏跟导入头文件 (这样可以很好的提高编码的效率)
         2 > 在工程中创建.pch以及导入.pch文件的步骤
                1. 创建步骤 : 右击-->New File...-->Other-->PCH File
                2. 导入步骤 : 点击最上面-->Build Settings-->搜索Prefix Header-->双击后面的路径, 然后把新建的.pch文件拖入到里面就可以了, 这样就把路径加了进去, 然后编译下, 就成功了(把Debug跟Release都要添加上)
                3. 如果搜索不到Prefix Header, 看一看是不是选择对了, 选择TARGETS下的第一个, Build Settings下选择All跟Combined
         
         */
// 9> 真机调试的时候出现 App installation failed. There was an internal API error (问题出现次数 : 2)
        /*
         
         1 > clearn一下自己的工程
         2 > bulid settings -> packaging -> product name 将这里的名字改成英文
         
         */
// 10> 修改在真机上app的名称以及桌面上的图标 (问题遇到次数 : 3)
        /*
         1 > 修改真机上的app名称 :
                第9个人问题中那么修改后运行程序后就是我们改成的那个英文名字, 下面的方法是如何修改app运行在桌面上的名字
                1 > 修改info里面的Bundle display name, 把这个名字改成我们想要的起的名字就可以了
         2 > 修改桌面上的图标
                1 > 打开xx.Info.plist,对其进行编辑。
                2 > 找到Icon files 这个, 如果没有的话就自己添加一个, 然后找到Icon files
                3 > 在后面的Item里面输入我们的图片的名字, 这样运行程序就有了程序的图标了
         
         */
// 11> 点击按钮选中状态跟不选中状态图片 (问题遇到次数 : 2次)
        /*
         
         1 > 创建btn的时候
                [btn setBackgroundImage:[UIImage imageNamed:@"gwc_04"] forState:UIControlStateNormal];
                [btn setBackgroundImage:[UIImage imageNamed:@"gwc_11"] forState:UIControlStateSelected];
         2 > 把btn创建好后 在[self.view addSubview:btn]上面添加上下面的代码
                if (!i) {
                btn.selected = YES;
                tempBtn = btn;  // tempBtn是一个全局的btn
                }
         3 > 在btn的点击事件一进去就这样写
                if (tempBtn == sender) {
                return;
                }
                tempBtn.selected = NO;
                sender.selected = YES;
                tempBtn = sender;
         
         */
// 12> NavigationBar挡住了视图 (问题遇到次数 : 1)
        /*
         
         在加载界面的时候加入如下两行代码就可以了
                self.edgesForExtendedLayout = UIRectEdgeNone;
                self.automaticallyAdjustsScrollViewInsets = NO;
         
         */
// 13> 动画效果的实现 (问题碰到次数 : 2)
        /*
        
         例如:点击一个按钮让 PaintView1 向右移动200个距离实现方法
             在按钮的点击事件中我们写入下面的几行代码就可以实现我们的功能
                    CGRect rect = PaintView1.frame;
                    rect.origin.x += 200;
                    [UIView animateWithDuration:0.3 animations:^{
                        PaintView1.frame = rect;
                    }];
         
         */
// 14> 真机调试出现std::basic_string/std::string::find. "std::ios_base::Init::Init()",referenced from:类的报错
        /*
         
         解决办法 :
            在库文件中搜索 libstdc++.dylib 然后把这个库换成libstdc++.6.0.9.dylib就可以了
         
         */
// 15> 横竖屏的显示 :
        /*
         
         1 > 如果仅仅是横屏, 不要求显示的内容适配的话, 只需要在我们想要横屏的Controller里面加上如下代码 :
                        // 支持设备自动旋转
                        - (BOOL)shouldAutorotate
                        {
                            return YES;
                        }
                        // 支持横竖屏显示
                        - (NSUInteger)supportedInterfaceOrientations
                        {
                            return UIInterfaceOrientationMaskAll;
                        }
         2 > 如果横屏的同时还要适配就需要在AppDelegate的didFinishLaunching里面加入如下的代码(同时需要加入上面的那几行代码)
                        if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
                        SEL selector = NSSelectorFromString(@"setOrientation:");
                        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
                        [invocation setSelector:selector];
                        [invocation setTarget:[UIDevice currentDevice]];
                        int val = UIInterfaceOrientationLandscapeRight;
                        [invocation setArgument:&val atIndex:2];
                        [invocation invoke];
                        }
         
         */
// 16> 程序一个界面上如果有两个tableView,解决方法  (问题遇到次数 : 1)
        /*
         
         解决方法, 在创建tableView的时候给每个部分的tableView设置tag值, 然后在后面的
         返回行数啊, 创建cell的地方用switch语句, 用if语句的话程序可能会崩溃
         
         */
// 17> 在5s模拟器运行的时候会显示不全(上下黑边), 显示的界面是4/4s界面的大小 (问题遇到次数 : 2)
        /*
         
         解决方法 :
                1 > 找一张纯黑的图片(随便找一张图片就好), 把宽高改成 640 x 1136 名字设置为Default-568h@2x.png
                2 > 然后把修改后的这个图片拖入到你的工程中就可以了 (随便拖入到一个文件夹就可以)
         
         */
// 18> 升级Xcode, 真机调试出现linker command failed with exit code 1 (use -v to see invocation)
        /*
            
         解决方法 :
            在Build Setting里面搜索 Enable Bitcode 然后把后面改成NO就可以了

         */
// 19> 提交项目到App Store出现的问题总结
        /*
         
         1 > ERROR ITMS-90022: "Missing required icon file. The bundle does not contain an app icon for iPhone / iPod Touch of exactly '120x120' pixels, in .png format for iOS versions >= 7.0."
                    解决方法 : 这个是因为项目中的icon file没有120x120的图片,弄一个120x120的图片然后在info plist里面的icon files中添加
                    item 后面填写上那个120x120图片的名字(需要注意的是图片的格式必须是png格式的)
         
         2 > ERROR ITMS-90022:"Your binary is not optimized for iPhone 5 - New iPhone...(后面还有一大串的英文报错信息)
                    解决方法 : 在项目中工程中导入名字 Default-568h@2x.png 的图片, 宽高像素为 640x1136

         */
// 20> 提交app审核被拒绝问题总结 (贴吧大神总结链接:**http://tieba.baidu.com/p/3625191327**)
        /*
         自己的总结 :
         
         1 >
         
         */
// 21> 运行程序的时候NSLog的地方有下面的打印,并且打印出加载出现错误 : (升级到Xcode7以上请求数据失败)
        /*
         
         解决方法 :
            1 > 在 info.plist中增加App Transport Security Settings, type设置为字典类型 (如果系统没有的话就自己手敲上去)
            2 > 然后再在上面的那个属性节点下添加Allow Arbitrary Loads, type为Boolean,值为YES (如果系统没有的话就自己手敲上去)
         
         */
// 22> 横竖屏的总结   (问题碰到次数 : 2)
        /*
         
         下面的网址里面是各种的总结
         http://www.jb51.net/article/73842.htm

         */
// 23> 获得当前View所在的控制器 (问题碰到次数 : 3)
        /*
         在当前的View的文件里面写上如下的代码就行了 (返回的VC是这个View所在的控制器的名字)
         也就是需要把下面这个代码里的PaintListViewController换成你当前View所在的控制器就可以了
         
                - (PaintListViewController *)viewController{
                for (UIView *next = [self superview]; next; next = next.superview) {
                UIResponder *nextResponder = [next nextResponder];
                if ([nextResponder isKindOfClass:[UIViewController class]]) {
                return (PaintListViewController *)nextResponder;
                }
                }
                return nil;
                }
         
         */
// 24> Could not launch “XXX” process launch failed: Security (问题碰到次数 : 2)
        /*
         
         解决方法 :
            手机设置 -> 通用 -> 描述文件与设备管理 -> 点击开发商应用 -> 点击信任 就可以了
         
         */
// 25> 音乐类播放器后台继续运行唱歌 (问题碰到次数 : 1)
        /*
         
         解决方法 :
         1. Tatget - > Capabilities - > Background Modes打开成ON -> 勾选Audio,AirPlay and Picture in Picture
         2. 在AppDelegate.m的applicationWillResignActive(将要进入后台)的方法中写入下面的代码(经测试, 这个不是完全后台播放我们的内容, 播放一段时间也就停止了, 到时候需要的一直后台运行的话就去网上找一些方法)
         
                    //开启后台处理多媒体事件
                    [[UIApplication sharedApplication] beginReceivingRemoteControlEvents];
                    AVAudioSession *session=[AVAudioSession sharedInstance];
                    [session setActive:YES error:nil];
                    //后台播放
                    [session setCategory:AVAudioSessionCategoryPlayback error:nil];
                    //这样做，可以在按home键进入后台后 ，播放一段时间，几分钟吧。但是不能持续播放网络歌曲，若需要持续播放网络歌曲，还需要申请后台任务id，具体做法是：
                    //    _bgTaskId=[AppDelegate backgroundPlayerID:_bgTaskId];
                    //其中的_bgTaskId是后台任务UIBackgroundTaskIdentifier _bgTaskId;
                    // **************在方法中写入上面的那些代码, 下面的这个是一个单独的方法***********
         
                    //// 实现一下backgroundPlayerID:这个方法:
                    //+(UIBackgroundTaskIdentifier)backgroundPlayerID:(UIBackgroundTaskIdentifier)backTaskId
                    //{
                    //    //设置并激活音频会话类别
                    //    AVAudioSession *session=[AVAudioSession sharedInstance];
                    //    [session setCategory:AVAudioSessionCategoryPlayback error:nil];
                    //    [session setActive:YES error:nil];
                    //    //允许应用程序接收远程控制
                    //    [[UIApplication sharedApplication] beginReceivingRemoteControlEvents];
                    //    //设置后台任务ID
                    //    UIBackgroundTaskIdentifier newTaskId=UIBackgroundTaskInvalid;
                    //    newTaskId=[[UIApplication sharedApplication] beginBackgroundTaskWithExpirationHandler:nil];
                    //    if(newTaskId!=UIBackgroundTaskInvalid&&backTaskId!=UIBackgroundTaskInvalid)
                    //    {
                    //        [[UIApplication sharedApplication] endBackgroundTask:backTaskId];
                    //    }
                    //    return newTaskId;
                    //}

         */
// 26> 在蒲公英上发布内部版本打.ipa包的时候出现 No matching provisioning profile found: Your build settings specify a provisioning profile with the UUID, however, no such provisioning profile was found.(就是发现不了UUID)  (问题遇到次数 : 1)
        /*
         
            解决方法 :
         1 > 右键点击文件里面的项目，show package contents(打开包内容), 找到项目中的**.xcodeproj文件
         
         2 > 找到project.pbxproj文件，右键 然后打开
         
         3 > 打开这个文件后，按command+F，在这个文件中查找“PROVISIONING_PROFILE",找到这个
         “PROVISIONING_PROFILE = "487F3EAC-05FB-4A2A-9EA0-31F1F35760EB";
         "PROVISIONING_PROFILE[sdk=iphoneos*]" = "487F3EAC-05FB-4A2A-9EA0-31F1F35760EB";
         然后把找到的上面那些类似的都删了
         
         4 > 然后保存文件，重新打开项目, 双击桌面上的下载下来的provisioning profile文件 , 然后再开始打包
         
         (需要用开发者账号生成新的证书 添加设备很简单, 添加app id也简单, 最后记得生成钥匙串文件, 然后在开发者中心重新删除钥匙串文件然后把证书在下载一次, 下载最新的证书需要)
         
         */
// 27> 程序打包成.ipa文件步骤  以及上传到app store上(问题遇到次数 : 2)
        /*
         1 >> 打包.ipa文件步骤
                1 > 在选择模拟器那里选择 Generic iOS Device
                2 > Xcode -> Product -> Archive
                3 > 点击右侧的Export -> 选择 Save for iOS App Store Deployment
                4 > 出来几个账号, 选择取消, 选择自己的那个开发者账号 然后Choose
                5 > 然后在点Export 保存到桌面上 这个时候就打包好了.ipa包
         
         2 >> 把.ipa包发布到app store上步骤 (用的是Application Loader)
                1 > 现在app store上创建新的版本 版本的标识符要跟程序的bundle id一模一样
                2 > 打开Application Loader -> 选取 -> 我们打包好的.ipa -> 选取等等再发送
                3 > 发送成功后去开发者中心找我们的构建版本是不是有了, 如果没有的话就等10几或者20几分钟
                4 > 开发者中心有了构建版本后点击审核就可以了, 这就是提交了新版本了
         
        */
// 28> 忽略导航栏的高度,将零点坐标变成 (0, 导航栏高度) 这个坐标 (问题碰到次数 : 2)
        /*
         
         在viewWillAppear中加入下列代码 :
                self.edgesForExtendedLayout = UIRectEdgeNone; // 这行代码的作用是导航栏半透明并且零点坐标还改变
         
         */
// 29 > 经常用到的宏的定义 (问题遇到次数 : 1)
        /*
         // 1 >快速生成颜色
         #define ZHColor(r, g, b, alp) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(alp)/1.0]
         
         // 2 >屏幕高跟宽
         #define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
         #define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
         //    通知栏以及Navgation的高
         #define STATUS_HEIGHT [[UIApplication sharedApplication] statusBarFrame].size.height
         #define NAV_HEIGHT self.navigationController.navigationBar.frame.size.height

         
         // 3 > 不同View之间互相适配 (根据上一个View的坐标定义当前View的坐标)
         #define ZHView_x(view) view.frame.origin.x           // View的起始点X坐标
         #define ZHView_y(view) view.frame.origin.y           // View的起始点Y坐标
         #define ZHView_height(view) view.bounds.size.height  // View的高度
         #define ZHView_width(view) view.bounds.size.width    // View的宽度
         
         #define ZHView_Top(view) view.frame.origin.y   // View的上部Y的坐标
         #define ZHView_Bottom(view) view.frame.origin.y + view.bounds.size.height // View的最下面的坐标
         #define ZHView_Left(view) view.frame.origin.x  // View的左侧X的坐标
         #define ZHView_Right(view) view.frame.origin.x + view.bounds.size.width   // View的最右侧的坐标


         
         // 4 > 判断机型
         #define IS_IPHONE_3.5inch (([[UIScreen mainScreen] bounds].size.height-480)?NO:YES)
         #define IS_IPHONE_4inch   (([[UIScreen mainScreen] bounds].size.height-568)?NO:YES)
         #define IS_IPHONE_4.7inch (([[UIScreen mainScreen] bounds].size.height-667)?NO:YES)
         #define IS_IPHONE_5.5inch (([[UIScreen mainScreen] bounds].size.height-960)?NO:YES)
         
         // 5 > 获取系统版本
         #define IOS_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]
         #define CurrentSystemVersion [[UIDevice currentDevice] systemVersion]
         
         // 6 > 获取当前的语言
         #define CurrentLanguage ([[NSLocale preferredLanguages] objectAtIndex:0])
         
         //  7 > NSUserDefaults
         #define USER_DEFAULT          [NSUserDefaults standardUserDefaults]

         
         //  > 在.pch中加入自定义的NSLog宏
                1 > 下面这个是有其他的打印信息的 (打印出来方法名字, 还有第多少行)
                    #ifdef DEBUG
                    # define ZHLog(fmt, ...) NSLog((@"[函数名:%s]\n" "[行号:%d] \n" fmt), __FUNCTION__, __LINE__, ##__VA_ARGS__);
                    #else
                    # define ZHLog(...);
                    #endif

         
                2 > 单纯的自定义NSLog, 跟NSLog打印结果一样,没有其余的打印信息
                    #ifdef DEBUG
                    #define ZHLog(fmt, ...) NSLog(fmt, ## __VA_ARGS__)
                    #else
                    #define ZHLog(fmt, ...)
                    #endif
         
         
                3 > 以后用下面这个, 打印信息里面只打印一个行号, 这样能快速的定位
                    #ifdef DEBUG
                    # define ZHLog(fmt, ...) NSLog((@"[第%d行] " fmt),  __LINE__, ##__VA_ARGS__);
                    #else
                    #define ZHLog(fmt, ...)
                    #endif

         */
// 30 > 判断程序是不是第一次打开 (问题遇到次数 : 2)
        /*
         在 appdelegate 的 didFinishLaunchWithOptions 方法中加入如下的代码
         // 判断程序是不是第一次打开
         if (![[NSUserDefaults standardUserDefaults] boolForKey:@"firstOpen"]) {
         [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"firstOpen"];
         NSLog(@"第一次启动程序");
         }else{
         NSLog(@"不是第一次启动程序");
         }
        */
// 31 > GitHub上传代码,以及删除上传的代码步骤 (问题遇到次数 : 2)
        /*
         1 > 上传代码步骤
                创建自己的库 输入Repository name
                在下面的Description (optional) 里面填写自己对这个库的描述
                在Initialize this repository with a README 前面选中 然后点击 Create repossitory
                然后出来的界面 点击Upload files --> 选择 choose your files-- > 点击Commit changes
         
         2 > 删除代码步骤
                1 > 选择你想删除的库
                2 > 然后选择右侧的settings,然后下拉到最下面选择delete
                3 > 把上面的黑体字拷贝下来,然后粘贴到输入框里面点击回车就删除了
         */
// 32 > 在真机上运行程序出现 App installation failed  A valid provisioning profile for this executable was not found. (问题遇到次数 : 1)
        /*
         解决方法 :
            1 > 在网上查阅资料,看到了下面这句 (下面这个是从网上看到的)
                    突然想到xcode现在是会自动生成一个PP(Provisioning Profile)文件的，
                    所以索性不管了，选择自动，让xcode自己去选吧。
                    然后就选择了automatic
            2 > 然后自己就把Code Signing中的Provisioning Profile选成了自动Automatic, 然后问题就解决了
         */
// 33 > 通知中心(NSNotificationCenter)的应用 三步骤 (问题碰到次数 : 2)
        /*
        1 > 某个类发出一个通知,也就是村长的大喇叭播放的内容 (通知的名字是"callBack"), 对象是self,表示是自己发出的
                [[NSNotificationCenter defaultCenter] postNotificationName:@"CallBack" object:self];
        2 > 某个类在接收到大喇叭名字为"CallBack"通知的时候,把self(自己)注册成观察者(也就是听大喇叭广播人),然后让self实现"notificationAction:"方法
                [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationAction:) name:@"CallBack" object:nil];
        3 > 实现通知方法
                在观察者(挺喇叭广播的人)类里面实现我们的通知方法就OK了 
         通知的实现就上面的 3 个步骤 很简单的
         */
// 34 > iOS 10的一些权限问题令程序崩溃解决 (问题遇到次数 : 2)
        /*
        用到哪个功能然后在info.plist中加入相对应的键值对就可以了
            相机权限描述：
            <key>NSCameraUsageDescription</key>
            <string>cameraDesciption</string>
         
            通信录：
            <key>NSContactsUsageDescription</key>
            <string>contactsDesciption</string>
         
            麦克风：
            <key>NSMicrophoneUsageDescription</key>
            <string>microphoneDesciption</string>
         
            相机：
            <key>NSPhotoLibraryUsageDescription</key>
            <string>photoLibraryDesciption</string>
        */
// 35 > 取视图的子视图比如label等, 然后可以给子视图赋值
        /*
            比方取 costView上的两个不同tag数值的label, 然后给label赋值
         for (UIView *subView in costView.subviews){
         
                if([subView isKindOfClass:NSClassFromString(@"UILabel")]){
         
                    UILabel *label=(UILabel *)subView; // 这里进行强转
                    if (label == 108) {
                        label = [NSString stringWithFormat:@"%@", [dataDic objectForKey:@"TOTAL_CHARGES"]] ;
                        }
                    if (label == 109) {
                        Label.text = [NSString stringWithFormat:@"%.2f", a];
                        }
                }
         }
         */

// 36 > MAC电脑远程桌面Windows电脑步骤(包括详细配置,文件传输)
        /*
            1 > 下载Parallels Client, 安装完打开后,右键-->新建链接-->标准RDP-->输入服务器地址(比如192.168.1.112)
                -->友好名字 就是给远程的电脑备注一下
            2 > 高级设置里面主连接就是地址(例如192.168.1.112) 用户名:administrator 密码:huayi@123 保存密码
            3 > 相互传输文件, 在Mac电脑桌面新建一个文件夹-->选择要传输的电脑右键-->连接属性-->本地资源-->远程电脑选择
                带入此电脑-->磁盘驱动器前面打钩-->配置-->点击右下角的+号-->选择桌面上创建的文件夹--然后重新断开连接然
                后再重新连接,这样在远程的桌面上双击我的电脑-->最下面的磁盘就有了Mac电脑-->点击出现了这文件夹,然后传输文件
            4 > 用远程的windows电脑再去远程另外一台windows电脑传输文件的时候,直接去我的电脑磁盘找,有个其他的就是主动电脑磁盘
         
         */

// 37 > 宏定义实现接口拼接, 方便修改主机地址, 这是宏的拼接
        /*
            1 > 在全局头文件Header.h文件中这样写 >
                    #define API_BASE_URL @"http://192.168.0.196:8445"
            2 > 在单个Crotroller的头部的宏这样写 >
                    #define sendCodeURL [NSString stringWithFormat:@"%@/v1/account/sendverifictioncode", API_BASE_URL]

         */
// 38 > Coding和码云创建仓库提交代码步骤
        /*
         // Coding上面允许20个人合作开发, 码云上允许5个人合作开发
         
         // 创建仓库等等的跟github是一样的, 比github要简单, 可以创建空仓库, 什么也不创建, 包括README.me等也可以不用创建
           1 > 去Coding和码云上创建一个仓库, 然后复制https链接
           2 > 打开Source tree 点击 "+新仓库" >> "从URL克隆"
           3 > 在源URL复制https链接(这里有个bug, 复制后不能自动补全下面的, 要先点击取消, 然后再点击新仓库>从URL克隆才行)
           4 > 如果是Coding的话, 复制好了链接, 点击克隆的时候, 就会让输入密码, 这个时候输入Coding的账户密码就行
           5 > 如果是码云的话, 点击了克隆不输入密码, 然后提交项目, 点击推送的时候让输入密码, 这个时候输入码云的账户密码就行
         // 在码云上先创建私有组织项目, 可以邀请开发人员, 只有被邀请的才能查看代码, 这个到时候就点击看就行了
         // Coding先创建项目, 然后再加入成员, 点击创建的项目, 然后选择'设置', 然后选择'成员管理', 然后添加成员就可以了, 在'设置'->'仓库设置'里面可以设置这个项目是公开的还是私有的
         */
// 39 > 关于viewWillAppear和viewDidAppear调用super方法的时候写法
        /*
          - (void)viewWillAppear:(BOOL)animated{
              [super viewWillAppear:animated];
         
              //在这里调用要执行的代码
          }
          - (void)viewDidAppear:(BOOL)animated{
              //在这里调用要执行的代码
         
              [super viewDidAppear:animated];
          }
         
         
         一般来说遵循下面这个规律
         
         - (void)setupSomething{        // 设置某物的时候, 类似viewWillAppear方法
              [super setupSomething];
         
              // 在这里调用要执行的代码
         }
         - (void)rearDownSomething{     // 拆毁某物的时候, 类似viewDidAppear
              // 在这里调用要执行的代码
         
              [super rearDownSomething];
         }


         */
// 40 > 在github上上传多个文件夹, 每个文件夹里面有一个项目步骤
        /*
            1 > 点击自己创建的仓库, 然后点击 Upload files
            2 > 出现的网页可以进行拖拽本地项目, 也可以选择choose your files
            3 > 这里我选择的是鼠标把本地项目拖拽过去, 然后等一会, 有个进度条, 让它走完后
            4 > 进度条走完后, 点击下面的 Commit changes
            5 > 然后本地仓库直接从github上拉取一下, 然后该怎么修改就怎么修改就可以了
         */
// 41
// 42

/******************************************开发问题解决方法***********************************************/



        
        
    
