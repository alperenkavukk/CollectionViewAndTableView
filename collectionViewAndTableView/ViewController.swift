//
//  ViewController.swift
//  collectionViewAndTableView
//
//  Created by Alperen Kavuk on 13.04.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
  
    
    
    @IBOutlet var table:UITableView!
    
    var models = [Model]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "otomobil", image: "otomobil"))
        models.append(Model(text: "sanat", image: "sanat2"))
        models.append(Model(text: "spor", image: "spor"))
        models.append(Model(text: "teknoloji", image: "teknoliji"))
        models.append(Model(text: "otomobil", image: "otomobil"))
        models.append(Model(text: "sanat", image: "sanat2"))
        models.append(Model(text: "spor", image: "spor"))
        models.append(Model(text: "teknoloji", image: "teknoliji"))
        models.append(Model(text: "otomobil", image: "otomobil"))
        models.append(Model(text: "sanat", image: "sanat2"))
        models.append(Model(text: "spor", image: "spor"))
        models.append(Model(text: "teknoloji", image: "teknoliji"))
        models.append(Model(text: "otomobil", image: "otomobil"))
        models.append(Model(text: "sanat", image: "sanat2"))
        models.append(Model(text: "spor", image: "spor"))
        models.append(Model(text: "teknoloji", image: "teknoliji"))

        table.register(collectionTableViewCell.nib(), forCellReuseIdentifier: "collectionTableViewCell")
        table.delegate = self
        table.dataSource = self
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "collectionTableViewCell", for: indexPath) as! collectionTableViewCell
        cell.configure(with: models)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
}
struct Model{
    let text: String
    let image: String
    
    init(text: String, image: String) {
        self.text = text
        self.image = image
    }
    
}
