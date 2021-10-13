//
//  HomeViewController.swift
//  News App
//
//  Created by Veri Anggoro on 13/10/21.
//  Copyright © 2021 Veri Anggoro. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var mainTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mainTableView.dataSource = self
    }

}

extension HomeViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "covid_cell", for: indexPath) as! CovidNewsViewCell
        
        let staticNews = NSMutableAttributedString(string: "Covid-19 News : ", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold),
                                                                                            NSAttributedString.Key.foregroundColor : UIColor(hex: "0077b6")
        ])
        staticNews.append(NSAttributedString(string: "See The Lastest Coverage About Covid-19", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular),
                                                                                            NSAttributedString.Key.foregroundColor : UIColor(hex: "7F7F7F")
        ]))
        cell.titleCovidNews.attributedText = staticNews
        return cell
    }
}
