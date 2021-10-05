//
//  ViewController.swift
//  About Me
//
//  Created by Diego Gonzalez on 10/4/21.
//

import UIKit
import SafariServices
@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

class ViewController: UIViewController, SFSafariViewControllerDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func favoriteColor(_ sender: Any)
    {
        self.view.backgroundColor=UIColor.blue
    }
    
    
    
    
    
    
    @IBAction func clearButton(_ sender: Any)
    {
        self.view.backgroundColor=UIColor.white
    }
    
    @IBAction func myUrl(_ sender: Any)
    {
        let fullURLPath = "https://www.truecolorsintl.com"
        let myUrl1 = URL(string: fullURLPath)
        let svc = SFSafariViewController(url: myUrl1!)
        svc.delegate = self
        self.present(svc, animated: true, completion: nil)
    }
}

