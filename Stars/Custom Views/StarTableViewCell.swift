//
//  StarTableViewCell.swift
//  Stars
//
//  Created by Marc Jacques on 3/10/21.
//

import UIKit

class StarTableViewCell: UITableViewCell {

    @IBOutlet weak var starName: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    var star: Star? {
        didSet {
            updateViews()
        }
    }
    
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateViews() {
        guard let star = star else { return }
        
        starName.text = star.name
        distanceLabel.text = star.distanceDescription
    }

}
