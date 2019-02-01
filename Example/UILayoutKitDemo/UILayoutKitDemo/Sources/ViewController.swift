import UIKit
import UILayoutKit

class ViewController: NavigationalMenuTableViewController {
    let container = View()
    lazy var view1 = createView()
    lazy var view2 = createView()
    lazy var view3 = createView()
    lazy var view4 = createView()
    lazy var view5 = createView()
    lazy var view6 = createView()
    lazy var view7 = createView()
    lazy var view8 = createView()

    lazy var views = [
        view1,
        view2,
        view3,
        view4,
        view5,
        view6,
        view7,
        view8
    ]
    override func createRows() -> [RowDataSource] {
        return [
            row("Test", {
                vc.view1 .= vc.container.edges .+ 20
                vc.view2 .= vc.container.center
                vc.view2.size .= 50
            }),
            row("Test", {

            }),
            row("Test", {

            })
        ]
    }

    func row(_ title: String, _ layout: @escaping () -> Void) -> RowDataSource {
        return .row(title, LayoutExampleViewController(layout: layout))
    }

    func createView() -> View{
        let view = View()
        container.addSubview(view)
        return view
    }
}

class LayoutExampleViewController: UIViewController {
//    var layout: (LayoutExampleViewController) -> Void
    let container: View
//    lazy var view1 = createView()
//    lazy var view2 = createView()
//    lazy var view3 = createView()
//    lazy var view4 = createView()
//    lazy var view5 = createView()
//    lazy var view6 = createView()
//    lazy var view7 = createView()
//    lazy var view8 = createView()
//
//    lazy var views = [
//        view1,
//        view2,
//        view3,
//        view4,
//        view5,
//        view6,
//        view7,
//        view8
//    ]
//    public required init(layout: @escaping (LayoutExampleViewController) -> Void) {
//        self.layout = layout
//        super.init(nibName: nil, bundle: nil)
//    }

    public required init(container: View) {
        self.container = container
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(container)
        container.edges .= view.edges .+ 50
//        layout(self)
    }

    func createView() -> View{
        let view = View()
        container.addSubview(view)
        return view
    }
}

open class NavigationalMenuTableViewController: UITableViewController {

    open lazy var rows: [RowDataSource] = self.createRows()
    override open func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    override open func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows.count
    }

    override open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let cellData = self.rows[indexPath.row]
        cell.layoutMargins = UIEdgeInsets.zero
        cell.separatorInset = UIEdgeInsets.zero
        //        cell.textLabel?.font = .regular(15.0)
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        cell.textLabel?.text = cellData.title
        cell.imageView?.image = cellData.leftImage
        return cell
    }

    override open func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellData = rows[indexPath.row]

        if !cellData.modal, let navVC = self.navigationController{
            navVC.pushViewController(cellData.createDestinationVC(), animated: true)
        }
        else{
            self.present(cellData.createDestinationVC(), animated: true, completion: nil)
        }
    }

    open func createRows() -> [RowDataSource] {
        assertionFailure(String(describing: self) + " is abstract. You must implement " + #function)
        return []
    }
}

public struct RowDataSource{
    var leftImage: UIImage?
    var title: String
    var createDestinationVC: () -> UIViewController
    var modal: Bool = false

    public static func row(leftImage: UIImage? = nil, _ title: String, _ createDestinationVC: @escaping @autoclosure () -> UIViewController, modal: Bool = false) -> RowDataSource{
        return RowDataSource(leftImage: leftImage, title: title, createDestinationVC: createDestinationVC, modal: modal)
    }
}
