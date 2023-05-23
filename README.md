[![SwiftPM compatible](https://img.shields.io/badge/SwiftPM-compatible-orange.svg)](#swift-package-manager)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![CocoaPods](https://img.shields.io/cocoapods/v/SPTabBarController-swift.svg)](http://cocoapods.org/pods/SPTabBarController-swift)
[![Swift v5](https://img.shields.io/badge/Swift-5-orange.svg?style=flat)](https://developer.apple.com/swift/)

### [中文介绍](README_CN.md)

**SPTabBarController** is a highly customizable TabBarController component, which is inherited from UITabBarController.

### Why?

In real-world development, we may encounter the situation of customizing the UITabBar. For instance: change font style, add animation, and use bigger items. However it's hard to do with UITabBarItem.

**With SPTabBarController, You can easily achieve these！**

-| Feature |Description
-------------|-------------|-------------
1| Default style | You can get a system-like style by initializing the TabBar with SPTabBarController directly.  </p> UITabBarController style: </p> ![System native style](Resources/SystemStyle.png) </p> SPTabBarController default style: </p> ![ES system-like style](Resources/CustomStyle.png)
2| Default style with "More" item | If the items are more than the maximum number of displays, there will be a "More" item. </p> UITabBarController with "More": </p> ![enter image description here](Resources/SystemMoreStyle.png) </p> SPTabBarController with "More": </p> ![enter image description here](Resources/CustomMoreStyle.png)
3| Mix UITabBarItem and SPTabBarItem | You can set any item as you want, including UITabBarItem and SPTabBarItem. </p> SPTabBar and UITabBar mixed style: </p> ![enter image description here](Resources/MixtureStyle.png) </p> SPTabBar and UITabBar mixed style with "More": </p> ![enter image description here](Resources/MixtureMoreStyle.png)
4| UIKit attributes | SPTabBarController is compatible with UITabBarController, UITabBar and UITabBarItem's most API attributes. You can migrate to SPTabBarController without any modification of the origin code.  </p> Compatible with UITabBarController's `selectedIndex`: </p> ![enter image description here](Resources/SelectIndexCode.png)
5| Any nesting with UINavigationController | Developing with`UITabBarController`, there are two common ways to handle layers: </p> First : </p> ├── UITabBarController </p> └──── UINavigationController </p> └────── UIViewController </p> └──────── SubviewControllers </p> Second : </p> ├── UINavigationController </p> └──── UITabBarController </p> └────── UIViewController </p> └──────── SubviewControllers </p> In the first case, need to set `hidesBottomBarWhenPushed = true` when pushing subViews. The second is not. </p> In SPTabBarController, add Container views to UITabBar to be compatible with these two ways。
6| Customizable style | With SPTabBarController, you can：</p> 1. Customize selected item's color and style: </p> ![enter image description here](Resources/CustomSelectStyleGif.gif) </p> 2. Add selecting animation:  </p> ![enter image description here](Resources/CustomSelectAnimateGif.gif) </p> 3. Customize item's background color: </p> ![enter image description here](Resources/CustomBackgroundGif.gif) </p> 4. Add highlight animation: </p> ![enter image description here](Resources/CustomHighlightGif.gif) </p> 5. Add animation to prompt users: </p> ![enter image description here](Resources/CustomImpliesGif.gif) </p> 6. And much more ... </p>
7| Customizable item's size </p> Customizable click event | You can easily customize item's size using SPTabBarController. </p> **When the button's frame is larger than TabBar, HitTest makes the outer TabBar area click valid.** </p> In addition, SPTabBarController can customize click event, and through a block to callback super-layer to handle. </p> With big item in the middle of TabBar: </p> ![enter image description here](Resources/CustomStyle2.png) </p> With a special hint style: </p> ![enter image description here](Resources/CustomStyle3.png) </p> Customize click event: </p> ![enter image description here](Resources/CustomHitGif.gif)
8| Default notification style |  You can get a system-like notification style by initializing the TabBar with SPTabBarController directly. </p> UITabBarController notification style: </p> ![enter image description here](Resources/SystemNotificationStyle.png) </p> SPTabBarController system-like notification style: </p> ![enter image description here](Resources/CustomNotificationStyle.png)
9| Customizable notification style | With SPTabBarController, you can：</p> 1. Customize notification animation: </p> ![enter image description here](Resources/CustomNofticationGif.gif) </p> ![enter image description here](Resources/CustomNofticationGif2.gif) </p> 2. Customize prompt style: </p> ![enter image description here](Resources/CustomNofticationGif3.gif) </p> 3. And much more ... </p>
10| Lottie | Through customizing ContentView, you are able to add Lottie's LAAnimationView to Item(s) </p> ![enter image description here](Resources/LottieGif.gif)

## Requirements

* Xcode 8 or later
* iOS 8.0 or later
* ARC
* Swift 5 or later

## Demo

You can download and build SPTabBarControllerExample project, and you will find more examples to use SPTabBarController, and also more examples to customize UITabBar。

## Usage

### Swift Package Manager

```
...
dependencies: [
    .package(name: "SPTabBarController", url: "https://github.com/tyronesong/SPTabBarController.git", from: "2.9.0-spm")
]
...
```





## TODO

1. The Containers' layout is purely based on code，using Autolayout will be better.
2. When there is "More," if edited, problems occur.
3. Partial UITabBarItem attributes are not bridge to SPTabBarItem.
4. ~~The picture of 'More' item in SPTabBarItemMoreContentView is not set into framework, plan to convert it to CGBitmap.~~

