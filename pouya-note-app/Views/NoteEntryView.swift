//
//  NoteEntryView.swift
//  pouya-note-app
//
//  Created by Pouya Sameni on 2023-09-28.
//

import SwiftUI

struct NoteEntryView: View {
    @State var note: Note
    let encoder = JSONEncoder()

    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading){
                    Text(note.title.prefix(12)).font(.largeTitle).multilineTextAlignment(.leading)
                    Text(note.noteBody.prefix(20) + "...").font(.subheadline).multilineTextAlignment(.leading).foregroundColor(.gray)
                }
                Spacer()
        
                NavigationLink(destination: NoteWindowView(note: note), label: {
                   
                })
          
                

            }
        }
        
        
    }
    

}

#Preview {
    NoteEntryView(note:Note(title: "Test Title", noteBody: "Test Body")
    )
}
