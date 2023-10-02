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
                AppHeaderView().onAppear {
                    // Call your function here
                    allNotes = getAllNotes()
                }
                
                List {
                    ForEach(allNotes) { note in
                        NoteEntryView(note: note)
                    }
                }.listStyle(PlainListStyle())

               
                Spacer()
            }
        }
        
    }
    func getAllNotes() -> [Note]{
        let fileManager = FileManager.default
        var notes: [Note] = []
        do {
            let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
            let fileURLs = try fileManager.contentsOfDirectory(at: documentsDirectory, includingPropertiesForKeys: nil)
            //print(fileURLs)
            for fileURL in fileURLs {
                // Check if it's a file (not a directory)
                if fileManager.isReadableFile(atPath: fileURL.path) {
                    print("File Name: \(fileURL.lastPathComponent)")
                    print("Here")
                    let jsonData = try Data(contentsOf: fileURL)
                    
                    // Decode JSON data into a Person struct
                    let decoder = JSONDecoder()
                    let note = try decoder.decode(Note.self, from: jsonData)
                    notes.append(note)
                    print(note)
                }
                
            }
        } catch {
            print(error)
            
        }
        return notes
    }
    
}

#Preview {
    HomeView(allNotes: [Note( title: "Title 1", noteBody: "Body 1"), Note( title: "Title 2", noteBody: "Body 2"),Note( title: "Title 3", noteBody: "Body 3"), Note( title: "Title 4", noteBody: "Body 4"),
                          Note( title: "Title 5", noteBody: "Body 5"), Note( title: "Title 6", noteBody: "Body 6"),
                             Note( title: "Title 7", noteBody: "Body 7"), Note( title: "Title 8", noteBody: "Body 8"),
                             Note( title: "Title 9", noteBody: "Body 9"), Note( title: "Title 99", noteBody: "Body 99")])
}
