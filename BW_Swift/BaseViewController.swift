//
//  BaseViewController.swift
//  BW_Swift
//
//  Created by plum on 2018/6/21.
//  Copyright © 2018年 plum. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
//    var isNeedBackgroundImage: Bool = false;
    
   lazy var backgroundImageView: UIView  = {
        let view = UIImageView.init(frame: .zero)
        view.image = UIImage(named: "image_common_bg")
        return view;
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        if isNeedBackgroundImage {
            self.view.insertSubview(backgroundImageView, at: 0)
            backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
            backgroundImageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            backgroundImageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            backgroundImageView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
//        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
