//
//  VenuesViewController.swift
//  NetworkingHW32
//
//  Created by Артем Иванов on 22.12.2024.
//

import UIKit

final class BooksViewController: UITableViewController {

    private var books: [Book] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 140
        booksMap()
    }

//MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        books.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath) as! BookCell
        
        let book = books[indexPath.row]
        cell.configureCell(with: book)
        
        return cell
    }
}

// MARK: - Networking
extension BooksViewController {
    private func booksMap() {
        guard let url = URL(string: "https://softwium.com/api/books") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            do {
                let decoder = JSONDecoder()
                self.books = try decoder.decode([Book].self, from: data)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            } catch let error {
               // print(error.localizedDescription)
                print(String(describing: error))
            }
        }.resume()
    }
}


