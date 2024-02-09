# StartUpSwift

This will help you to know what will be the first requirement while you are creating an app with iOS platform. This will also help you for initial setup of your project and make easier and smooth programming in future.

**Appdelegate.swift**
- App life cycle
- Push notification methods
- Custom Methods

**Views (This will store all storyboard)**
- Launchscreen.storyboard
- Authentication.storyboard
- Main.storyboard

**Controller (This can be divided as per the view)**
Authentication
- LoginVC.swift
- SignupVC.swift
- etc.

Main
- HomeVC.swift
- ProfileVC.swift
etc.

**CustomCell (This will store all the swift files of custom cell)**
- TableviewCell.Swift
- Must have prefix TblCellxxx.swift
- CollectionviewCell.swift
- Must have prefix CollCellxxx.swift

**Model (This can be divided as per the controller)
- Authentication
- Login.swift
- Signup.swift
- etc.
- Main
- Home.swift
- Profile.swift
- etc.

**Assets.xcassets (This can be divided as per the view and controller)**
- Appicon
- Auth
- icon_login
- icon_signip
- Main
- icon_home
- icon_user

**Localization**
- Localizable.strings (Base)
- Localizable.strings (English)

**Third Party files**
- The files for which we are not doing pod install or created by a third party should be stored inside this folder

**LocalFiles**
- Fonts
- .pdf, txt, html, .json, etc.
- Sound/video/Images

**Constant.swift**
- Contains all objects, global variables, constant, etc.

**APIKeys.swift**
- Contains all keys. i.e web service parameter keys

**LocalDBHelper**
- UserDefaultKeys.swift
	- Contains all keys that stored in Userdefaults with prefix kUD_xxxx
- UserDefaultData.swift
	 Contains all get set method for Userdefaults with prefix setUDxxx, getUDxxx, etc.
- CoredataHelper.swift
	Contains all method for table operation. I.e insert, update, delete, etc.

**AppStructure
- Contain structure For Ex.
- Screen Size
- Device type
- Storyboard identifier
- View Controller identifier
- Segues identifier
- CustomCell Identifier
- Notification observer identifier
- Web Service List
- Font name and style
- App Theme color
- Date Format
- All Character set

**AppEnum.swift**
- Contains all the enums used in project i.e
- Tab/Menu

**Common.swift**
- Contains all global methods that can be used in any class.

**Alert.swift**
- Contains Alert and action sheet methods

**AppExtension.swift**
- All the common extension that we are using must have separate file I.e ExtString.swift

**BaseVC.swift**
- Must contain all the methods that can be used in more than one view controller i.e
- MFMessage and Mail Delegate methods
- Reload table row and Section
- Email/Password validation
- Present activity controller

**ViewController.swift**
- View Life cycle
- Use prefix for control name i.e  lblxxx, txtxxx, txtViewxxx, btnxxx, viewxxx, tblxxx, collxxx, webxxx, 
- Use prefix for variable name i.e arrxxx, dicxxx, strxxx, intxxx, dblxxx also one line comment why it's taken (For ex. arrCopy // This array store copy of username)
- Use prefix for method name i.e callAPIxxx, getValuexxx, setValuexxx, actionxxx
- User defined methods (each and every user defined function must have comment for which purpose it has been created)
- Delegate Methods (tableview, textview, textfield, textview, etc.)

**AppTrash.swift**
- It will store all commented code.
- Instead of storing all commented code in class, its good practise to store it inside this file by setting pragma of classname (from which class the commented code belong) so can be used when you need.

**AppInfo.text**
- Contains version info of app

**Config.text**
- Contains configuration of app i.e google developer, firebase, etc


**Guidelines :**
- Function length should not exceed the screen size, if it exceeded then create a separate function which will make execution faster as well it will be easy to understand.
- View Life cycle should be well managed. (i.e Create separate method for the code written in view life cycle and call it inside.)
- Avoid the use of static methods because it will load the whole class when we calling any one of them.
- Reduce code redundancy by making general function that you can call when you needed.
- For UITableView/UICollectionView manage data setting operation inside the respective cell class instead of view controller. This will reduce view controller file length.
- Always remove observer from view controller, because it may cause uncertain crash.

- It’s good practise to use capital letters for pragma and One line comment, So it will be highlighted among your code.
