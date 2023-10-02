//
//  AppHeaderView.swift
//  pouya-note-app
//
//  Created by Pouya Sameni on 2023-09-28.
//

import SwiftUI

struct AppHeaderView: View {
    var body: some View {
        HStack {
            Text("Welcome To You Notes").font(.title2)
            Spacer()
            
      
                NavigationLink(destination: {NoteWindowView()}, label:{
                    Image(systemName: "doc.badge.plus")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                })

            
           
            
        }
        .padding()
        Divider()
            .frame(width: 1000)
            .overlay(.black)
        
        
    }
}

#Preview {
    AppHeaderView()
}
