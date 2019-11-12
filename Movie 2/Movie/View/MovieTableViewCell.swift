//
//  MovieTableViewCell.swift
//  Movie
//
//  Created by Mélanie Obringer on 03/11/2019.
//  Copyright © 2019 Mélanie Obringer. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    //MARK: - Outlets
    
    @IBOutlet weak var classmentLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    // MARK: - Methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    /// method to configure the cell
    func configure(withClassment classment: Int, title: String, year: Int) {
        classmentLabel.text = String(classment + 1)
        titleLabel.text = title
        subtitleLabel.text = String(year)
    }
    
}
