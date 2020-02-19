//
//  PostListViewModel.swift
//  Webapi
//
//  Created by iMac on 18/02/20.
//  Copyright © 2020 Evince Develoment. All rights reserved.
//

import Foundation


class PostListViewModel: ObservableObject {
    
    @Published  var posts = [PostViewModel]()
    
    init() {
        //R.K Calling webservice
        Webservices().getPosts { posts in
            if let posts = posts {
                self.posts = posts.map(PostViewModel.init)
            }else{
                print("No post found")
            }
        }
    }
}
struct PostViewModel {
    
    var post: Post
    
    init(post : Post) {
        self.post = post
    }
    //R.K Storing ID
    var id : Int {
        return self.post.id
    }
    //R.K Storing Title
    var title: String {
        return self.post.title
    }
    //R.K Storing Body
    var body: String{
        return self.post.body
    }
    
}
