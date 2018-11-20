//
//  ViewController.swift
//  coder-swag
//
//  Created by Meitar Basson on 08/11/2018.
//  Copyright © 2018 Meitar Basson. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategory().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategory()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }else {
            return CategoryCell()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            let barBtn  = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            var category:Category? = sender as? Category
            
            if let cell = sender as? UITableViewCell? {
                let indexPath = categoryTable.indexPath(for: cell!)
                category = DataService.instance.getCategory()[(indexPath?.row)!]
            }
            
            assert(category != nil)
            productsVC.initPorudcts(category: category!)
        }
    }
}

