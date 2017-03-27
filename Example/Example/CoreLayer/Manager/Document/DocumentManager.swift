//
//  DocumentManager.swift
//  Example
//
//  Created by Marcelo Reis on 3/27/17.
//  Copyright © 2017 Marcelo Reis. All rights reserved.
//

import Foundation

class DocumentManager: NSObject {
    private let business: DocumentBusiness = DocumentBusiness()
    
    func loadPDFUrl(_ pdfName: String, completion: DocumentCompletion) {
        self.business.loadPDFUrl(pdfName, completion: completion)
    }
}
