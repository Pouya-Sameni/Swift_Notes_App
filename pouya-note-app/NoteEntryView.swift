//
//  NoteEntryView.swift
//  pouya-note-app
//
//  Created by Pouya Sameni on 2023-10-04.
//

import SwiftUI

struct NoteEntryView: View {
    @State var note: Note

    
    
    var body: some View {
        
        
        VStack{
            HStack{
                VStack(alignment: .leading){
                    Text(note.title.prefix(12)).font(.largeTitle)
                    Text(note.noteBody.prefix(20) + "...").font(.subheadline).foregroundColor(.gray)
                }
                Spacer()
                
                NavigationLink(destination: NoteEditView(note: note), label: {})

          
                

            }
        }
    }
}

#Preview {
    NoteEntryView(note:Note(title: "Test Title", noteBody: "Test Body"))
}
