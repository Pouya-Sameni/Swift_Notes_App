//
//  ContentView.swift
//  pouya-note-app
//
//  Created by Pouya Sameni on 2023-09-27.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            
            HStack {
                Text("Welcome To You Notes").font(.title2)
                Spacer()
                Image(systemName: "doc.badge.plus")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            
            }
            .padding()
            Divider()
                .frame(width: 1000)
                .overlay(.black)
     
                
 
            HStack{
                VStack{
                    Text("Title of Note").font(.largeTitle).multilineTextAlignment(.leading).padding(.trailing, 120.0)
                    Text("This is the first sentence of the note to be").font(.subheadline).multilineTextAlignment(.leading)
                }
                Spacer()
                Image(systemName: "pencil.line")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    
            }.padding()
            HStack{
                VStack{
                    Text("Title of Note").font(.largeTitle).multilineTextAlignment(.leading).padding(.trailing, 120.0)
                    Text("This is the first sentence of the note to be").font(.subheadline).multilineTextAlignment(.leading)
                    
                }
                Spacer()
                Image(systemName: "pencil.line")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }.padding()
            HStack{
                VStack{
                    Text("Title of Note").font(.largeTitle).multilineTextAlignment(.leading).padding(.trailing, 120.0)
                    Text("This is the first sentence of the note to be").font(.subheadline).multilineTextAlignment(.leading)
                }
                Spacer()
                Image(systemName: "pencil.line")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }.padding()
            Spacer()
        }
        
        
    }
}

#Preview {
    HomeView()
}
