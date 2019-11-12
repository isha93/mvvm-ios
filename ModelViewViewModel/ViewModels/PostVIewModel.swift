//
//  PostVIewModel.swift
//  ModelViewViewModel
//
//  Created by isa nur fajar on 12/11/19.
//  Copyright © 2019 isa nur fajar. All rights reserved.
//

import Foundation

// import module
import RxSwift
import RxCocoa

class PostViewModel {
    
    // membuat sebuah observer variable untuk menampung data dari post model
    // observer digunakan untuk memantau perubahan pada set data.
    var posts = BehaviorRelay<[Post]>(value: [])
    
    // sebuah fungsi untuk fetch data dari api
    func getPosts(){
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
        
        // fetch data menggunakan URLSession
        URLSession.shared.dataTask(with: url){(data, response, error) in
            do{
                
                self.posts.accept(try JSONDecoder().decode([Post].self, from: data!))
                
            }catch let err{
                print(err)
            }
        }.resume()
        
    }
    
}
