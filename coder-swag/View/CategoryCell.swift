//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Meitar Basson on 08/11/2018.
//  Copyright © 2018 Meitar Basson. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    @IBOutlet var categoryImageViewWidth: NSLayoutConstraint!
    
    func updateViews(category: Category) {
        categoryImageViewWidth.constant = UIScreen.main.bounds.size.width
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
