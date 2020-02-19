//
//  Post.swift
//  Webapi
//
//  Created by iMac on 18/02/20.
//  Copyright © 2020 Evince Develoment. All rights reserved.
//

import Foundation

struct Post : Codable {
    let id : Int  //R.K Id of post
    let title: String //R.K Title of post
    let body : String //R.K Bosy of post
}
