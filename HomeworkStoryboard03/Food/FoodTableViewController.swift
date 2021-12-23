//
//  FoodTableViewController.swift
//  HomeworkStoryboard03
//
//  Created by 黃柏嘉 on 2021/12/23.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    
    let data = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBSegueAction func passCheapFoodData(_ coder: NSCoder) -> FoodRankingTableViewController? {
        let controller = FoodRankingTableViewController(coder: coder)
        controller?.kind = "平價美食"
        controller?.link = "https://www.gomaji.com/blog/%E9%AB%98%E9%9B%84%E5%B0%8F%E5%90%83/"
        controller?.foodArray = data.cheapFoodData
        return controller
    }
    
    @IBSegueAction func passexpensiveFoodData(_ coder: NSCoder) -> FoodRankingTableViewController? {
        let controller = FoodRankingTableViewController(coder: coder)
        controller?.kind = "餐廳"
        controller?.link = "https://ifoodie.tw/explore/%E9%AB%98%E9%9B%84%E5%B8%82/list/%E9%AB%98%E9%9B%84%E9%A0%82%E7%B4%9A%E9%A4%90%E5%BB%B3"
        controller?.foodArray = data.expensiveFoodData
        return controller
    }

    @IBSegueAction func passDrinkData(_ coder: NSCoder) -> FoodRankingTableViewController? {
        let controller = FoodRankingTableViewController(coder: coder)
        controller?.kind = "飲料"
        controller?.link = "https://www.gomaji.com/blog/%E9%AB%98%E9%9B%84%E9%A3%B2%E5%93%81/"
        controller?.foodArray = data.drink
        return controller
    }
    @IBSegueAction func passDessertData(_ coder: NSCoder) -> FoodRankingTableViewController? {
        let controller = FoodRankingTableViewController(coder: coder)
        controller?.kind = "甜點"
        controller?.link = "https://www.gomaji.com/blog/%E9%AB%98%E9%9B%84%E7%94%9C%E9%BB%9E/"
        controller?.foodArray = data.dessert
        return controller
    }
    
}
