//
//  CommentsViewModel.swift
//  Spotting
//
//  Created by micromanc3r on 10/10/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Foundation

struct CommentsViewModel {
    let comments: [Comment]

    func commentRows() -> Int {
        return comments.count
    }

    func comment(forRow row: Int) -> Comment {
        return comments[row]
    }
}
