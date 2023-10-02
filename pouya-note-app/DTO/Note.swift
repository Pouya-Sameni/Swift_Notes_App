//
//  Note.swift
//  pouya-note-app
//
//  Created by Pouya Sameni on 2023-10-01.
//

import Foundation


struct Note: Identifiable, Codable {
    var id = UUID()
    var title: String = ""
    var noteBody: String = ""
}
