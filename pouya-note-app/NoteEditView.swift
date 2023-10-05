//
//  NoteEditView.swift
//  pouya-note-app
//
//  Created by Pouya Sameni on 2023-10-04.
//

import SwiftUI

struct NoteEditView: View {
    @State var note: Note = Note (title: "", noteBody: "")
    
    var body: some View {
        VStack{
            TextField("Title", text: $note.title, axis: .vertical).font(.largeTitle).padding().bold()
            TextField("Enter Note Here...", text: $note.noteBody, axis: .vertical).padding().bold()
            Spacer()
            Button("Save") {
                //TODO: Implement Function
            }
            
        }
    }
    func saveToFile (){
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(note)
            if let jsonString = String (data: data, encoding: .utf8){
                let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
                let fileURL = documentDirectory.appendingPathComponent(note.id.uuidString + ".json")
                print (fileURL)
                try jsonString.write(to: fileURL, atomically: true, encoding: .utf8)
            }}
        catch {
            
        }
       
        
        
    }
    
}

#Preview {
    NoteEditView()
}
