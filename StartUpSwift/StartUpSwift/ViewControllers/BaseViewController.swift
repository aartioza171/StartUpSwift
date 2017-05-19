//
//  BaseViewController.swift
//  iphoneDemoSwift
//
//  Created by Aarti Oza on 15/05/17.
//  Copyright © 2017 Aarti Oza. All rights reserved.
//

import UIKit
import Contacts
import ContactsUI
import MessageUI

class BaseViewController: UIViewController,CNContactPickerDelegate,MFMessageComposeViewControllerDelegate,MFMailComposeViewControllerDelegate
{

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK:- Custom Methods  -
    
    func emailWith(_ strSubject:String,strMessage:String,arrRecipients:[String])
    {
        if MFMailComposeViewController.canSendMail()
        {
            let picker: MFMailComposeViewController=MFMailComposeViewController()
            picker.mailComposeDelegate=self;
            picker.setSubject(strSubject)
            picker.setToRecipients(arrRecipients)
            picker.setMessageBody(strMessage,isHTML: false)
            self.present(picker, animated: true, completion: nil)
        }
    }
    
    func getContacts()
    {
        if #available(iOS 9.0, *)
        {
            let contactPickerViewController = CNContactPickerViewController()
            contactPickerViewController.delegate = self
            contactPickerViewController.predicateForEnablingContact = NSPredicate(format: "phoneNumbers.@count > 0")
            present(contactPickerViewController, animated: true, completion: nil)
        }
    }
    
    func messageToContacts(_ strMessage:String)
    {
        let msgView:MFMessageComposeViewController = MFMessageComposeViewController()
        if MFMessageComposeViewController.canSendText()
        {
            msgView.body = strMessage
            msgView.messageComposeDelegate = self
            self.present(msgView, animated: true, completion: nil)
        }
    }
    
    func isValidEmail(_ testStr:String) -> Bool
    {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    func reloadTableRow(_ intRow : Int, intSection : Int, tblView : UITableView)
    {
        let indexPath: IndexPath = IndexPath(row:intRow, section: intSection)
        let indexArray: [IndexPath] = [indexPath]
        tblView.reloadRows(at: indexArray, with: .none)
    }
    
    func reloadTableSection(_ intSection : Int, tblview : UITableView)
    {
        tblview.reloadSections(IndexSet(integer: intSection), with: .none)
    }
    
    func openUrlInSafari(_ url : String)
    {
        let url : URL = URL(string: url)!
        if  UIApplication.shared.canOpenURL(url)
        {
            UIApplication.shared.openURL(url)
        }
        else
        {
            print("URL can not be opened.")
            //ShowErrorAlert("URL can not be opened.")
        }
    }
    
    // MARK: - MFMailComposer Delegate -
    
    func mailComposeController(_ controller:MFMailComposeViewController, didFinishWith result:MFMailComposeResult, error:Error?)
    {
        switch result.rawValue
        {
            case MFMailComposeResult.cancelled.rawValue:
                print("Mail cancelled")
            case MFMailComposeResult.saved.rawValue:
                print("Mail saved")
            case MFMailComposeResult.sent.rawValue:
                print("Mail sent")
            case MFMailComposeResult.failed.rawValue:
                print("Mail sent failure: \(error!.localizedDescription)")
            default:
                break
        }
        self.dismiss(animated: false, completion: nil)
    }
    
    // MARK: - MFMessage Composer Delegate -
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult)
    {
        controller.dismiss(animated: true) {}
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
