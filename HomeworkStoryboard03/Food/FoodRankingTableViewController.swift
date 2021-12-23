//
//  FoodRankingTableViewController.swift
//  HomeworkStoryboard03
//
//  Created by 黃柏嘉 on 2021/12/23.
//

import UIKit

class FoodRankingTableViewController: UITableViewController {
    
    //Cell名稱
    struct PropertyKeys{
        static let kindCellIdentifier = "kindCell"
        static let contentCellidentifier = "contentCell"
    }
    
    //接收資料
    var kind:String!
    var link:String!
    var foodArray:[FoodContent?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source

    //cell數量
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return foodArray.count+1
    }
    //cell顯示什麼
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //第一格種類跟連結
        if indexPath.row == 0{
            let kindCell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.kindCellIdentifier, for: indexPath) as! FoodTableViewCell
            kindCell.typeLabel.text = kind
            kindCell.linkTextView.text = link
            kindCell.linkTextView.textColor = .clear
            return kindCell
        }else{
            //第二格開始是排行榜
            let contentCell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.contentCellidentifier, for: indexPath) as! FoodTableViewCell
            contentCell.contentImageView.image = UIImage(named:foodArray[indexPath.row-1]!.imageName)
            contentCell.shopName.text = foodArray[indexPath.row-1]!.shopName
            contentCell.shopAddress.text = foodArray[indexPath.row-1]?.shopAddress
            
            return contentCell
        }
        
        
    }
   
}
