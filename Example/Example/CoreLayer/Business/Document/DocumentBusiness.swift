//
//  DocumentBusiness.swift
//  Example
//
//  Created by Marcelo Reis on 3/27/17.
//  Copyright © 2017 Marcelo Reis. All rights reserved.
//

import Foundation

enum DocumentResult {
    case Success(Data, URL)
    case Failure(Error)
}

typealias DocumentCompletion = (DocumentResult) -> Void

class DocumentBusiness: NSObject {
    
    func loadPDFUrl(_ pdfName: String, completion: DocumentCompletion) {
        if let pdfURL = Bundle.main.url(forResource: pdfName, withExtension: "pdf", subdirectory: nil, localization: nil)  {
            do {
                let data = try Data(contentsOf: pdfURL)
                completion(.Success(data, pdfURL))
            }
            catch {
                print(error)
                completion(.Failure(error))
            }
        }
    }
}
