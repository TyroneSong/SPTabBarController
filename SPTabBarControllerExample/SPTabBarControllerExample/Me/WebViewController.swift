//
//  WebViewController.swift
//  SPTabBarControllerExample
//
//  Created by 宋璞 on 2023/5/22.
//

import UIKit
import WebKit

public class WebViewController: UIViewController {
    
    @IBOutlet weak var dissmissBtn: UIButton!
    
    @IBOutlet weak var webView: WKWebView!
    
    public class func instanceFromStoryBoard() -> WebViewController {
        return UIStoryboard(name: "WebView", bundle: nil).instantiateInitialViewController() as! WebViewController
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "https://github.com/TyroneSong"
        let url = URL(string: "https://github.com/TyroneSong")!
        let request = URLRequest(url: url)
        self.webView.load(request)
        
        self.dissmissBtn.layer.borderWidth = 2
        self.dissmissBtn.layer.borderColor = UIColor.lightGray.cgColor
        self.dissmissBtn.layer.cornerRadius = 12
    }
    
    
    @IBAction func dismissAction(_ sender: Any) {
        if let navigationController = self.navigationController {
            navigationController.popViewController(animated: true)
        } else {
            self.dismiss(animated: true)
        }
    }
}
