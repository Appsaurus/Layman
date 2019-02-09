import UIKit
import UILayoutKit

class ViewController: NavigationalMenuTableViewController {

    override func createRows() -> [RowDataSource] {
        return LayoutExample.allCases.map { row($0) }
    }

    func row(_ example: LayoutExample) -> RowDataSource {
        return .row("\(example)".uppercased(), LayoutExampleViewController(example))
    }
}

public enum LayoutExample: CaseIterable {
    case size
    case center
    case horizontal
    case vertical
    case edgesInset
    case corners
    case stack
    case nestedStack

}

extension Constraint {

}
class LayoutExampleViewController: UIViewController {
    var layout: LayoutExample
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

    public required init(_ layout: LayoutExample) {
        self.layout = layout
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(container)
        view.backgroundColor = .red
        container.backgroundColor = .blue
        container.centerXY .= view.centerXY

        edgesForExtendedLayout = []
        extendedLayoutIncludesOpaqueBars = false
        createAutolayoutConstraints()
    }

    public func createAutolayoutConstraints(){
        switch layout {

        case .size:
            view1.size.equal(to: (50, 75))
//            view1 .= view.width.priority(.low)
            view1 .= view.width.minus(20)
        case .center:
            view1.centerXY .= container.centerXY
        case .horizontal:
            view1.centerXY .= container.centerXY
//        case .vertical:
//            <#code#>
//        case .edgesInset:
//            <#code#>
//        case .corners:
//            <#code#>
//        case .stack:
//            <#code#>
//        case .nestedStack:
//            <#code#>
        default: break
        }
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


class DashedBorderView: UIView {

    var cornerRadius: CGFloat = 4
    var borderColor: UIColor = UIColor.black
    var dashPaintedSize: Int = 2
    var dashUnpaintedSize: Int = 2

    let dashedBorder = CAShapeLayer()

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        //custom initialization
        self.layer.addSublayer(dashedBorder)
        applyDashBorder()
    }

    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        applyDashBorder()
    }

    func applyDashBorder() {
        dashedBorder.strokeColor = borderColor.cgColor
        dashedBorder.lineDashPattern = [NSNumber(value: dashPaintedSize), NSNumber(value: dashUnpaintedSize)]
        dashedBorder.fillColor = nil
        dashedBorder.cornerRadius = cornerRadius
        dashedBorder.path = UIBezierPath(rect: self.bounds).cgPath
        dashedBorder.frame = self.bounds
    }
}
