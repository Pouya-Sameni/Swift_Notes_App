//
//  ContentView.swift
//  pouya-note-app
//
//  Created by Pouya Sameni on 2023-09-27.
//

import SwiftUI

struct NoteWindowView: View {
    @State var note: Note = Note(title: "", noteBody: "")

    let encoder = JSONEncoder()

    var body: some View{
        
        VStack{
            TextField("Title", text: $note.title, axis: .vertical).font(.largeTitle).padding().bold()

            TextField("Enter Your Note Here..", text: $note.noteBody, axis: .vertical)
                        .padding()
            Spacer()
            Button("Save") {
                saveFile()
            }
        }
    }
        
    func saveFile (){
        do {
            let data = try encoder.encode(note)
            

            if let jsonString = String(data: data, encoding: .utf8){
                let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
                let fileURL = documentsDirectory.appendingPathComponent( note.id.uuidString + ".json")
                print(fileURL)
                try jsonString.write(to: fileURL, atomically: true, encoding: .utf8)
            }
            
        } catch {
            print(error)
        }
    }
}

#Preview {
    NoteWindowView(note: Note(title: "", noteBody: ""))
}
