//
//  ViewController.swift
//  StartUpSwift
//
//  Created by Aarti Oza on 15/05/17.
//  Copyright © 2017 Aarti Oza. All rights reserved.
//

import UIKit

class ViewController: BaseViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if DeviceType.IPHONE6P_7P
        {
            print("hello")
        }
        
        //USE OF Localization
        let arrTemp  = NSLocalizedString("arrTemp", comment: "Array temp").components(separatedBy: ",")
        print(arrTemp)
        
        //USE OF AppStructure.swift
        self.view.backgroundColor = ColorTheme.screen
        
        //USE OF Helper.swift
        showAlertWithTwoButtonTitle(strTitle: "Temp", strMessage: "This is temp message", strBtn1Title: "Ok", strBtn2Title: "Cancel", button1Handler: { (UIAlertAction) in
            
            print("This is Ok action")
            
        }, viewController: self)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

