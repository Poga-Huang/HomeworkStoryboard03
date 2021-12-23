//
//  FoodTableViewCell.swift
//  HomeworkStoryboard03
//
//  Created by 黃柏嘉 on 2021/12/23.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    //kindCell
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var linkTextView: UITextView!
    //contentCell
    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var shopName: UILabel!
    @IBOutlet weak var shopAddress: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
