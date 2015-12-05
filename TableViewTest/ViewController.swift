//
//  ViewController.swift
//  TableViewTest
//
//  Created by 麻生 拓弥 on 2015/12/03.
//  Copyright © 2015年 麻生 拓弥. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK:- Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UIviewController にTableViewを貼る場合は書くか
        // Storyboard の NavigationBar の設定で Translucent のチェックを外す
        // 書かない場合は AutoLayout で上の制約を -64 に設定することになる
        //self.navigationController!.navigationBar.translucent = false;
        self.navigationItem.title = "SDT Advent Calendar Day 6"
    
    }
    
    // MARK:- UITableViewDelegate Method
    
    // セクションごとのセル数(実装必須)
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // 最初のセクションはセル数0にする
        if (section == 0) {
            return 0
        } else if (section == 1) {
            return 30
        } else {
            return 0
        }
    }
    
    // セルの内容を表示(実装必須)
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: TableViewCell = tableView.dequeueReusableCellWithIdentifier("CustomCell", forIndexPath: indexPath) as! TableViewCell
        cell.countLabel.text = String(indexPath.row)
        
        return cell
    }
    
    // セクション数
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // 空セクションを作るので1つ増やす
        return 2
    }
    
    // Footer の(今回は)色を指定
    // たくさんメソッドがあるのでこれで適切かどうかはわからない
    func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        
        view.tintColor = UIColor.clearColor()
    }
    
    // MARK:- UITableViewDataSource Method

    // Footer の高さを返す
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    
        return 20
    }
    
    // MARK:- Memory Warning
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}