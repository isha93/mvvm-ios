//
//  PostViewCell.swift
//  ModelViewViewModel
//
//  Created by isa nur fajar on 12/11/19.
//  Copyright © 2019 isa nur fajar. All rights reserved.
//

import Foundation

class PostViewCell: UITableViewCell{
    
    // jangan lupa untuk menambahkan outlet connection dari storyboard ke var ini (view cell)
    // jangan lupa juga untuk menambah identifier dengan nama "PostViewCell" sama class nya mengarah ke class ini
    @IBOutlet weak var lbTitle: UILabel!
    
}
