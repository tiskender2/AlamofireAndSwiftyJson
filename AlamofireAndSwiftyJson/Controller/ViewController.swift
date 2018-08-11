//
//  ViewController.swift
//  AlamofireAndSwiftyJson
//
//  Created by tolga iskender on 11.08.2018.
//  Copyright © 2018 tolga iskender. All rights reserved.
//

import UIKit
import ListPlaceholder
class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
   	
    }
    override func viewDidAppear(_ animated: Bool) {
        Networking.getData(basarili: {
            self.tableView.reloadData()
            self.tableView.showLoader()
            
            
        })
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return haberArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350.0
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HaberTableViewCell
       
        cell.setDatatoTableview(haberBaslik:haberArray[indexPath.row].haberBaslik , haberTarih: haberArray[indexPath.row].haberTarih,
                                haberResim: haberArray[indexPath.row].haberResim, haberTitle: haberArray[indexPath.row].haberTitle,
                                haberAciklama: haberArray[indexPath.row].haberAciklama)
        self.tableView.hideLoader()
        return cell
        
    }
    
    
}

