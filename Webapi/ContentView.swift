//
//  ContentView.swift
//  Webapi
//
//  Created by iMac on 18/02/20.
//  Copyright © 2020 Evince Develoment. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var postlistVM = PostListViewModel()
    
    var body: some View {
        
        //R.K Showing list of topics which are fethced from API
        List(self.postlistVM.posts, id: \.id){ post in
            VStack(alignment: .leading){
                Text(post.title).font(.title)
                Text(post.body)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
