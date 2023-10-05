//
//  ContentView.swift
//  pouya-note-app
//
//  Created by Pouya Sameni on 2023-09-27.
//

import SwiftUI

struct HomeView: View {
    @State var allNotes: [Note] = []
    var body: some View {
        NavigationView{
            VStack{
                
                HeaderView()
                
                List{
                    ForEach (allNotes) {note in NoteEntryView(note: note)}
                }.listStyle(PlainListStyle())
        
                

                Spacer()
            }

        }
        
    }
}

#Preview {
    HomeView(allNotes: [Note( title: "Title 1", noteBody: "Body 1"), Note( title: "Title 2", noteBody: "Body 2"),Note( title: "Title 3", noteBody: "Body 3"), Note( title: "Title 4", noteBody: "Body 4"),
                              Note( title: "Title 5", noteBody: "Body 5"), Note( title: "Title 6", noteBody: "Body 6"),
                                 Note( title: "Title 7", noteBody: "Body 7"), Note( title: "Title 8", noteBody: "Body 8"),
                                 Note( title: "Title 9", noteBody: "Body 9"), Note( title: "Title 99", noteBody: "Body 99")])
}
