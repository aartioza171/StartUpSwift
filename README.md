# StartUpSwift
This iproject will help you to know what will be the first requirement while you are creating an app with iOS platform. This will also help you for initial setup of your project and make easier and smooth programming in future.

Constant.swift
- Contains all keys and objects

AppStructure.swift

- Contain structure/Enum For Ex.
    - Screen Size
    - Device type
    - Storyboard identifier
    - View Controller identifier
    - Segues identifier
    - TableCell Identifier
    - Webservice List
    - Font name and style
    - App Theme color
    - Date Format
    - All Character set

Helper.swift

- Contains all global methods For Ex.
    - Alert methods
    - show/hide loader

BaseViewController.swift

- Must contain all the method that can be used in more than one view controller (For Ex.)
    - MFMessage and Mail Delegate methods
    - Reload table row and Section
    - BSKeyboard setup to textfield

ViewController.swift

- Variable have one line comment why its taken (For ex. arrCopy // This array store copy of username)
- View Life cycle
- User defined methods (each and every user defined function must have comment for which purpose it has been created)
- Delegate Methods (tableview, textview, etc.)


AppTrash.swift

- It will store all commented code
- instead of storing all commented code in class its good practise to store it in ProjectTrash.swift so we can use it later if we want.

AppInfo.text

- Contains info of app
- Contains third party info with link (if used)
