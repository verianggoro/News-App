//
//  CovidNewsViewCell.swift
//  News App
//
//  Created by Veri Anggoro on 13/10/21.
//  Copyright © 2021 Veri Anggoro. All rights reserved.
//

import UIKit

class CovidNewsViewCell: UITableViewCell {

    @IBOutlet weak var viewCovidNews: UIView!
    @IBOutlet weak var titleCovidNews: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        initUiCellCovid()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }
    
    func initUiCellCovid(){
        viewCovidNews.layer.cornerRadius = 8
        viewCovidNews.layer.masksToBounds = true
        viewCovidNews.layer.borderColor = UIColor(hex: "707070").cgColor
        viewCovidNews.layer.borderWidth = 1
    }

}
