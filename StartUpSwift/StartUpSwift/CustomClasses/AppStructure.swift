//
//  AppStructure.swift
//  iphoneDemoSwift
//
//  Created by Aarti Oza on 12/05/17.
//  Copyright © 2017 Aarti Oza. All rights reserved.
//

import UIKit
import Foundation


struct ScreenSize
{
    static let Width         = MAINSCREEN.size.width
    static let Height        = MAINSCREEN.size.height
    static let MaxLength    = max(ScreenSize.Width, ScreenSize.Height)
    static let MinLength    = min(ScreenSize.Width, ScreenSize.Height)
}

struct DeviceType
{
    static let IPHONE4  = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.MaxLength < 568.0
    static let IPHONE5_SE = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.MaxLength == 568.0
    static let IPHONE6_7 = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.MaxLength == 667.0
    static let IPHONE6P_7P = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.MaxLength == 736.0
    static let IPAD = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.MaxLength == 1024.0
    static let IPADPRO = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.MaxLength == 1366.0
}

struct StoryboardID
{
    static let Main = "Main"
}

struct ViewControllerID
{
    static let SignUpVC = "SignUpVC"
}

struct SegueID
{
    static let SignUpToSignIn = "SignUpToSignIn"
}

struct TableCellID
{
    static let TableCell = "TableCell"
}

struct WSList
{
    static let Signup = ""
}

struct DateFormatstyle
{
    static let ddMMyyyy = "dd/MM/yyyy"
    static let ddMMMyyyy = "dd MMM yyyy"
}

struct FontStyle
{
    static let Helvetica = "HelveticaNeue"
    static let HelveticaMedium = "HelveticaNeue-Medium"
    static let HelveticaBold = "HelveticaNeue-Bold"
}

struct AppFont
{
    static let navTitle = UIFont(name: FontStyle.HelveticaMedium, size: 15)
}

struct ColorTheme
{
    static let navTitle = UIColorFromRGB(0x4CAF50)
    static let navBar = UIColorFromRGB(0x4CAF50)
    static let descLbl = UIColorFromRGB(0x4CAF50)
    static let screen = UIColorFromRGB(0x4CAF50)
}

struct CharSet
{
    static let alphaWithSpace = " ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    static let email = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@_."
    static let password = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+=-/.,?><';}]{[|"
    static let expectNum = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$%^&*()_+=|/}{:?><.'~`,;[]"
    static let numer = "0123456789"
    static let decimalWithNumber = "0123456789."
}
