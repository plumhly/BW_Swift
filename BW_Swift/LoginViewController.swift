//
//  LoginViewController.swift
//  BW_Swift
//
//  Created by plum on 2018/6/21.
//  Copyright © 2018年 plum. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {
    
    // MARK: - Property
    // MARK: Outlet
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    

    // MARK: - System Method
    override func viewDidLoad() {
        super.viewDidLoad()
        configTextFeildView(textFeild: phoneNumberTextField, placeHodler: "手机号码")
        configTextFeildView(textFeild: passwordTextField, placeHodler: "密码")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Custome Method
    
    func attributeStringFor(placeHodlerString string: String) -> NSAttributedString {
        let attri  = NSAttributedString(string: string, attributes: [NSAttributedStringKey.foregroundColor: UIColor.red, NSAttributedStringKey.font: UIFont.systemFont(ofSize: 15)]);
        return attri
    }
    
    func configTextFeildView(textFeild: UITextField, placeHodler: String) {
        textFeild.attributedPlaceholder = attributeStringFor(placeHodlerString: placeHodler)
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        textFeild.leftView = view
        textFeild.leftViewMode = .always
    }

}
