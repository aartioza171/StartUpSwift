//
//  Helper.swift
//  iphoneDemoSwift
//
//  Created by Aarti Oza on 12/05/17.
//  Copyright © 2017 Aarti Oza. All rights reserved.
//
import UIKit
import Foundation


typealias alertAction = (UIAlertAction) -> ()

func showAlertWithTwoButtonTitle(strTitle: String, strMessage: String, strBtn1Title: String, strBtn2Title: String, button1Handler: @escaping alertAction, viewController: UIViewController) {
    
    let controller = UIAlertController(title: strTitle, message: strMessage, preferredStyle: UIAlertControllerStyle.alert)
    
    let okAction = UIAlertAction(title: strBtn1Title, style: UIAlertActionStyle.default, handler: button1Handler)
    
    let cancelAction = UIAlertAction(title: strBtn2Title, style: UIAlertActionStyle.cancel, handler: nil)
    
    controller.addAction(okAction)
    controller.addAction(cancelAction)
    
    viewController.present(controller, animated: true, completion: nil)
}

func UIColorFromRGB(_ rgbValue: UInt) -> UIColor {
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}
