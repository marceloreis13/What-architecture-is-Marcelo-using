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
}


