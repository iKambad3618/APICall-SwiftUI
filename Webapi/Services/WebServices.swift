//
//  WebServices.swift
//  Webapi
//
//  Created by iMac on 18/02/20.
//  Copyright © 2020 Evince Develoment. All rights reserved.
//

import Foundation

class Webservices {
    
    func getPosts(completion: @escaping ([Post]?) -> ()){
        //R.K This is general URL for demo api call
        guard let url = URL(string: "http://jsonplaceholder.typicode.com/posts") else {
            fatalError("URL Error")
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let comesData = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let posts = try? JSONDecoder().decode([Post].self, from: comesData)
            if posts == nil {
                print("Posts is nil ===>")
            }
            DispatchQueue.main.async {
                completion(posts)
            }
        }.resume()
    }
}
