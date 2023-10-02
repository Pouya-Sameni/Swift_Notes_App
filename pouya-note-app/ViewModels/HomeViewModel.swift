//
//  HomeViewModel.swift
//  pouya-note-app
//
//  Created by Pouya Sameni on 2023-09-28.
//

import Foundation


public func getAllNotes(){
    let fileManager = FileManager.default
    do {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let fileURLs = try fileManager.contentsOfDirectory(at: documentsDirectory, includingPropertiesForKeys: nil)
        print(fileURLs)
    } catch {
        print(error)
    }
}
