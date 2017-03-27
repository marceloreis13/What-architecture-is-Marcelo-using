//
//  Env.swift
//  Example
//
//  Created by Marcelo Reis on 3/27/17.
//  Copyright © 2017 Marcelo Reis. All rights reserved.
//

struct Env {
    //Storyboards
    struct Storyboards {
        static let main: String = "Main"
    }
    
    struct System {
        static let name: String = "Example"
        static let appID: String = "6512bd43d9caa6e02c990b0a82652fr"
        static let url: String = "http://tst.oclock.com.br"
        
        struct Palette {
            static let white: String = "#FFFFFF"
            static let black: String = "#000000"
            static let yellow: String = "#FFE001"
        }
        
        struct Fonts {
            static let main: String = "HelveticaNeue"
        }
    }}
