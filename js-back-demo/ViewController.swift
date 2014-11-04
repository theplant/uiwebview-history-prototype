//
//  ViewController.swift
//  js-back-demo
//
//  Created by bodhi on 4/11/2014.
//  Copyright (c) 2014 The Plant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var backButton: UIButton!
    @IBOutlet var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        loadContent(webView)
    }

    func loadContent(webView : UIWebView) {
        var url = NSBundle.mainBundle().URLForResource("index", withExtension:"html")
        var request = NSURLRequest(URL: url!)

        webView.loadRequest(request)
    }

    @IBAction func goBack() {
        if webView.canGoBack {
            webView.goBack()
        } else {
            UIAlertView(title: "Close web view", message: "No more history for going back", delegate: nil, cancelButtonTitle: "OK").show()
        }
    }

}
