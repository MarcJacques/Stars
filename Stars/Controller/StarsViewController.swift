//
//  StarsViewController.swift
//  Stars
//
//  Created by Marc Jacques on 3/10/21.
//

import UIKit

class StarsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
       
    @IBOutlet weak var starsNameTextField: UITextField!
    @IBOutlet weak var distanceTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    let starController = StarController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func printStarsTapped(_ sender: UIButton) {
        print(starController.stars)
    }
    
    @IBAction func createTapped(_ sender: UIButton) {
        guard let name = starsNameTextField.text,
              let distance = distanceTextField.text,
              !name.isEmpty ,
              !distance.isEmpty,
              let unWrappedDistance = Double(distance) else { return }
        
        starController.createStar(name: name, distance: unWrappedDistance)
        starsNameTextField.text = ""
        distanceTextField.text = ""
        starsNameTextField.becomeFirstResponder()
        tableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        starController.stars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "StarsCell", for: indexPath) as? StarTableViewCell else { return UITableViewCell() }
        
        let star = starController.stars[indexPath.row]
        cell.star = star
        
        return cell
    }
}

