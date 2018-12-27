//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Administrator on 26/12/2018.
//  Copyright © 2018 Amplitudo. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
