//
//  ViewController.swift
//  CustomTableView
//
//  Created by PugalMuni on 26/02/19.
//  Copyright © 2019 PugalMuni R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var empdata = [Employee]()

    @IBOutlet weak var empTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        empdata = [Employee(empName : "John", empId : "MS001"),Employee(empName : "Dev", empId : "MS002"),Employee(empName : "Mark", empId : "Dev003")]
        setTableViewData()
        
    }
}
extension ViewController : UITableViewDataSource, UITableViewDelegate
{
    func setTableViewData()
    {
        self.empTableView.delegate = self
        self.empTableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return empdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.identifier, for: indexPath) as? CustomCell else {return UITableViewCell()}
        let empItems = empdata[indexPath.row]
        cell.populateData(with: empItems)
        return cell
    }
}

