//
//  Faq.swift
//  SwiftUIExpandableList
//
//  Created by Marble Interactive SL on 11/2/23.
//

import Foundation

struct Faq: Identifiable {
    var id = UUID()
    var question: String
    var answer: String
    
}

let dataSource = [
    Faq(question: "Can I reuse the source code?", answer: "Absolutely! You are allowed to reuse the source code in your own projects (personal/commercial). However, you're not allowed to distribute or sell the source code without prior authorization."),
    Faq(question: "Will I get free update?", answer: "Yes! The update applies to all packages. Once you purchase the book, you will get free updates for 1 year."),
    Faq(question: "How can I get the book updates?", answer: "Whenever we update the learning materials, we will send you an email notification with the download instructions.")
]
