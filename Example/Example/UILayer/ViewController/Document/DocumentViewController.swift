//
//  DocumentViewController.swift
//  Example
//
//  Created by Marcelo Reis on 3/27/17.
//  Copyright © 2017 Marcelo Reis. All rights reserved.
//

import UIKit

class DocumentViewController: UIViewController {
    
    //MARK: - Properties
    static let storyboardId = "DocumentVC"
    let documentManager: DocumentManager = DocumentManager()
    var webViewLoaded: Bool = false
    var interval: Timer = Timer()
    
    //MARK: - Computed
    private var mainView: DocumentView {
        return self.view as! DocumentView
    }
    
    //MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.documentManager.loadPDFUrl("iOS-Architecture") {
            (docResult) in
            
            switch docResult {
            case let .Success(pdfData, pdfURL):
                self.mainView.webView.load(pdfData, mimeType: "application/pdf", textEncodingName:"", baseURL: pdfURL.deletingLastPathComponent())
                self.mainView.addSubview(self.mainView.webView)
            case let .Failure(error):
                print(error)
            }
        }
    }
    
    // MARK: - Functions
    func progressBarStart() {
        self.mainView.progressView.progress = 0.0
        self.webViewLoaded = false
        self.interval = Timer.scheduledTimer(timeInterval: 0.01667, target: self, selector: #selector(self.timerCallback), userInfo: nil, repeats: true)
    }
    
    func progressBarFinish() {
        self.webViewLoaded = true
    }
    
    func timerCallback() {
        if self.webViewLoaded {
            if self.mainView.progressView.progress >= 1 {
                self.mainView.progressView.isHidden = true
                self.interval.invalidate()
            } else {
                self.mainView.progressView.progress += 0.1
            }
        } else {
            self.mainView.progressView.progress += 0.05
            if self.mainView.progressView.progress >= 0.95 {
                self.mainView.progressView.progress = 0.95
            }
        }
    }
}

extension DocumentViewController: UIWebViewDelegate {
    func webViewDidStartLoad(_ webView: UIWebView) {
        self.progressBarStart()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        self.progressBarFinish()
    }
}


