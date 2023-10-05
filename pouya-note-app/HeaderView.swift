//
//  HeaderView.swift
//  pouya-note-app
//
//  Created by Pouya Sameni on 2023-10-04.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack{
            HStack {
                Text("Welcome To You Notes").font(.title2)
                Spacer()
                
                NavigationLink(destination: NoteEditView(), label: {
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
}

#Preview {
    HeaderView()
}
