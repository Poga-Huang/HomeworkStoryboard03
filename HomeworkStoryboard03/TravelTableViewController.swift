//
//  TravelTableViewController.swift
//  HomeworkStoryboard03
//
//  Created by 黃柏嘉 on 2021/12/23.
//

import UIKit

class TravelTableViewController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBSegueAction func passPier2Data(_ coder: NSCoder) -> UITableViewController? {
        let controller = LocationTableViewController(coder: coder)
        controller?.loactionData = LocationCoordinate(longitude: 120.28161452809354, latitude: 22.62006941684903, traffic: "建議交通方式:\n搭乘捷運到橘線鹽埕埔站")
        return controller
    }
    @IBSegueAction func passSmallNatureData(_ coder: NSCoder) -> UITableViewController? {
        let controller = LocationTableViewController(coder: coder)
        controller?.loactionData = LocationCoordinate(longitude: 120.2593987415865, latitude: 22.63422403786849, traffic: "建議交通方式：\n自行騎車或開車前往")
        return controller
    }
    @IBSegueAction func passSteelBridgeData(_ coder: NSCoder) -> UITableViewController? {
        let controller = LocationTableViewController(coder: coder)
        controller?.loactionData = LocationCoordinate(longitude: 120.4270801950482, latitude: 22.662537010878715, traffic: "建議交通方式：\n自行騎車或開車前往")
        return controller
    }
    @IBSegueAction func passQijinData(_ coder: NSCoder) -> UITableViewController? {
        let controller = LocationTableViewController(coder: coder)
        controller?.loactionData = LocationCoordinate(longitude:  120.31509241856362, latitude:22.698335384428702, traffic: "建議交通方式：\n搭乘渡輪或從開車行駛過港隧道\n選擇搭乘渡輪可坐捷運至橘線西子灣站再徒步至鼓山輪渡站")
        return controller
    }
    
    
}
