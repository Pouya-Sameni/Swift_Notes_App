//
//  Note.swift
//  pouya-note-app
//
//  Created by Pouya Sameni on 2023-10-04.
//

import Foundation


struct Note: Identifiable, Codable {
    var id = UUID()
    var title: String = ""
    var noteBody: String = ""
}
