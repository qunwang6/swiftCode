//
//  AboutviewController.swift
//  showAlert
//
//  Created by MacOSBeta on 2018/8/3.
//  Copyright © 2018 MacOSBeta. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = Bundle.main.url(forResource:"BullsEye",withExtension:"html") {
            if let htmlData = try? Data(contentsOf: url){
                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
                webView.load(htmlData,mimeType: "text/html",textEncodingName: "UTF-8",baseURL: baseURL)
                
            }
        }
    }
    //AboutViewController Class要重新命名
    //check Inheri Module From Target
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
