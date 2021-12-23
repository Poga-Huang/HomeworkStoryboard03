//
//  LocationTableViewController.swift
//  HomeworkStoryboard03
//
//  Created by 黃柏嘉 on 2021/12/23.
//

import UIKit
import MapKit

class LocationTableViewController: UITableViewController {
    struct PropertyKeys{
        static let mapCellIdentifier = "mapCell"
        static let trafficCellidentifier = "trafficCell"
    }
    
    var loactionData:LocationCoordinate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 400
        }else{
            return 100
        }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
           let mapCell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.mapCellIdentifier, for: indexPath) as! LocationTableViewCell
            //設定地圖
            mapCell.map.region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: loactionData!.latitude, longitude: loactionData!.longitude), latitudinalMeters: 1000, longitudinalMeters: 1000)
            //加入標記
            let annontation = MKPointAnnotation()
            annontation.coordinate = CLLocationCoordinate2D(latitude: loactionData.latitude, longitude: loactionData.longitude)
            mapCell.map.addAnnotation(annontation)
            return mapCell
        }else{
            let trafficCell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.trafficCellidentifier, for: indexPath) as! LocationTableViewCell
            trafficCell.trafficLabel.text = loactionData!.traffic
            return trafficCell
        }
    }
}
