//
//  CommentsViewController.swift
//  Spotting
//
//  Created by micromanc3r on 10/10/2018.
//  Copyright © 2018 micromanc3r. All rights reserved.
//

import Cartography
import UIKit

class CommentsViewController: NIViewController {
    let commentsTableView = UITableView()
    let viewModel: CommentsViewModel

    init(withComments comments: [Comment]) {
        viewModel = CommentsViewModel(comments: comments)
        super.init()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        prepareLayout()
    }
}

extension CommentsViewController {
    private func prepareLayout() {
        commentsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "test")
        commentsTableView.dataSource = self
        view.addSubview(commentsTableView)

        constrain(view.safeAreaLayoutGuide, commentsTableView) { superview, commentsTableView in
            commentsTableView.top == superview.top
            commentsTableView.left == superview.left
            commentsTableView.right == superview.right
            commentsTableView.bottom == superview.bottom
        }
    }
}

extension CommentsViewController: UITableViewDataSource {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return viewModel.commentRows()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "test", for: indexPath)
        let comment = viewModel.comment(forRow: indexPath.row)
        cell.textLabel?.text = "\(comment.userName): \(comment.text)"
        return cell
    }
}
