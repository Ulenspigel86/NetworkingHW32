//
//  BookCell.swift
//  NetworkingHW32
//
//  Created by Артем Иванов on 24.12.2024.
//

import UIKit

final class BookCell: UITableViewCell {
    @IBOutlet var idBookLabel: UILabel!
    @IBOutlet var bookTitleLabel: UILabel!
    @IBOutlet var pageCountLabel: UILabel!
    @IBOutlet var authorsLabel: UILabel!
    
    func configureCell(with book: Book) {
        idBookLabel.text = "Book ID: \(book.id)"
        bookTitleLabel.text = "Book title: \(book.title)"
        pageCountLabel.text = "Page count: \(book.pageCount)"
        authorsLabel.text = "Authors: \(book.authors)"
        
        idBookLabel.numberOfLines = 0
        bookTitleLabel.numberOfLines = 0
        authorsLabel.numberOfLines = 0
    }
    
    
}

