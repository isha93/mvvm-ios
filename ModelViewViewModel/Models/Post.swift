//
//  Post.swift
//  ModelViewViewModel
//
//  Created by isa nur fajar on 12/11/19.
//  Copyright © 2019 isa nur fajar. All rights reserved.
//

import Foundation

struct Post : Decodable{
    let id: Int
    let title: String
    let body: String
}
