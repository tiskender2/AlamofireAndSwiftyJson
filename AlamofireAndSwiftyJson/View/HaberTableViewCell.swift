//
//  HaberTableViewCell.swift
//  AlamofireAndSwiftyJson
//
//  Created by tolga iskender on 11.08.2018.
//  Copyright © 2018 tolga iskender. All rights reserved.
//

import UIKit
import SDWebImage
class HaberTableViewCell: UITableViewCell {
    @IBOutlet weak var haberBaslik: UILabel!
    @IBOutlet weak var haberTarih: UILabel!
    @IBOutlet weak var haberResim: UIImageView!
    @IBOutlet weak var haberTitle: UILabel!
    @IBOutlet weak var haberAciklama: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }
   
    func setDatatoTableview(haberBaslik: String, haberTarih: String, haberResim: String, haberTitle: String, haberAciklama: String)
    {
        self.haberBaslik.text = haberBaslik 
        self.haberTarih.text = haberTarih
        self.haberResim.sd_setImage(with: URL(string: haberResim), placeholderImage: nil)
        self.haberTitle.text = haberTitle
        self.haberAciklama.text = haberAciklama
        self.haberAciklama.sizeToFit()
    }

}
