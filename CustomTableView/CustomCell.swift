//
//  CustomCell.swift
//  CustomTableView
//
//  Created by PugalMuni on 26/02/19.
//  Copyright © 2019 PugalMuni R. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var empNameLabel : UILabel!
    @IBOutlet weak var empIdLabel : UILabel!
    
    //static let identifier = "CustomCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        empNameLabel.text?.removeAll()
        empIdLabel.text?.removeAll()
    }
    
    func populateData(with empData : Employee)
    {
        self.empNameLabel.text = empData.empName
        self.empIdLabel.text = empData.empId
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}

extension UITableViewCell
{
    static var identifier : String{
        return String(describing: self)
    }
}
