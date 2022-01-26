//
//  WebViewController.swift
//  CalculatorBMI
//
//  Created by YJ on 2022/01/26.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let url = URL(string: "https://github.com/lyj-ooz") else {
            return
        }
        
        let req = URLRequest(url: url)
        webView?.load(req)
    }

}
