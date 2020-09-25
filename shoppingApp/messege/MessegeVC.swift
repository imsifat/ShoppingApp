//
//  MessegeVC.swift
//  shoppingApp
//
//  Created by Imran Sifat on 15/9/20.
//  Copyright © 2020 Imran Sifat. All rights reserved.
//

import UIKit

class MessegeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Messages"
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "messegeCell") as! messegeCell
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
class messegeCell: UITableViewCell{
    @IBOutlet weak var messegeImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var messege: UILabel!
    @IBOutlet weak var dateLBL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        messegeImage.layer.cornerRadius = 45
        messegeImage.clipsToBounds = true
    }
    
    
}
