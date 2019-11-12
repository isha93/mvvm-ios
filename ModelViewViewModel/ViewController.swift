//
//  ViewController.swift
//  ModelViewViewModel
//
//  Created by isa nur fajar on 12/11/19.
//  Copyright © 2019 isa nur fajar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // jangan lupa untuk menambahkan outlet connection dari storyboard ke var ini
    @IBOutlet weak var tablePost: UITableView!
    // reference viewmodel
    let postViewModel = PostViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // fetch data posts
        postViewModel.getPosts()
        
        // bind posts yang ada pada viewmodel ke tablePost
        postViewModel.posts.bind(to: tablePost.rx.items(cellIdentifier: "PostViewCell", cellType: PostViewCell.self)){row, post, cell in
            
            // set data ke label title dari view cell
            cell.lbTitle.text = post.title
        }
        
    }

}

// class untuk handle view cell dari table post
class PostViewCell: UITableViewCell{
    
    // jangan lupa untuk menambahkan outlet connection dari storyboard ke var ini (view cell)
    // jangan lupa juga untuk menambah identifier dengan nama "PostViewCell" sama class nya mengarah ke class ini
    @IBOutlet weak var lbTitle: UILabel!
    
}

