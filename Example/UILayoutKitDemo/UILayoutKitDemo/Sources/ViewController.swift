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
    case sizeConstant
    case size
    case center
    case horizontalEdges
    case verticalEdges
    case edges
    case edgesInset
    case corners
    case stack
    case nestedStack
}

class LayoutExampleViewController: UIViewController {
    var layout: LayoutExample
    let container = View()
    lazy var view1 = createView() ~~ "view1"
    lazy var view2 = createView() ~~ "view2"
    lazy var view3 = createView() ~~ "view3"
    lazy var view4 = createView() ~~ "view4"
    lazy var view5 = createView() ~~ "view5"
    lazy var view6 = createView() ~~ "view6"
    lazy var view7 = createView() ~~ "view7"
    lazy var view8 = createView() ~~ "view8"
    lazy var view9 = createView() ~~ "view9"
    lazy var view10 = createView() ~~ "view10"
    lazy var stackView: StackView = {
        let stackView = StackView() ~~ "StackView"
        container.addSubview(stackView)
        stackView.backgroundColor = .purple
        stackView.centerXY .= container.centerXY
        stackView.enforceContentSize()
        return stackView
    }()

    lazy var views = [
        view1,
        view2,
        view3,
        view4,
        view5,
        view6,
        view7,
        view8,
        view9,
        view10
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


        edgesForExtendedLayout = []
        extendedLayoutIncludesOpaqueBars = false
        createAutolayoutConstraints()
    }

    public func createAutolayoutConstraints(){

        container.centerXY .= view.centerXY
        container.edges .= edges .+ 10

        switch layout {
        case .sizeConstant:
            view1.size .= 100
            //            view1.size .= (100, 100)
            //            view1.size.equal(to: 100)
            //            view1.size.equal(to: (100, 100))
            view1.centerXY .= container.centerXY
        case .size:
            view1.size .= 100
            view2.size .= view1.size
            view1.trailing .= container.centerX .+ 10
            view2.leading .= container.centerX .+ 10
            [view1, view2].centerY .= container.centerY
        //            view2.size.equal(to: view1.size)
        case .center:
            view1.size .= 100
            view1.centerXY .= container.centerXY
        case .horizontalEdges:
            view1.horizontalEdges .= container.horizontalEdges .+ 10
            view1.centerY .= container.centerY
            view1.height .= 100
        case .verticalEdges:
            view1.verticalEdges .= container.verticalEdges .+ 10
            view1.centerX .= container.centerX
            view1.width .= 100
        case .edges:
            view1.edges .= container.edges .+ 10
        case .edgesInset:
            view1.edges .= container.edges .+ LayoutInset(top: 25, left: 50, bottom: 75, right: 100)
        case .corners:
            [view1, view2, view3, view4].size .= 100
            view1.topLeft .= container.topLeft .+ 10
            view2.topRight .= container.topRight .+ 10
            view3.bottomRight .= container.bottomRight .+ 10
            view4.bottomLeft .= container.bottomLeft .+ 10
        case .stack:
            [view1, view2, view3, view4].size .= 100
            stackView.alignment = .center
            stackView.axis = .vertical
            print("DIST: \(stackView.distribution.rawValue)")
            stackView.stack(
                view1,
                10,
                view2,
                50,
                view3,
                100,
                view4
            )
        case .nestedStack:



            stackView.alignment = .center
            stackView.axis = .vertical

            view1.size .= 250
            [view2, view3].size .= 250 / 2.0
            [view4, view5, view6].size .= 200 / 3.0
            [view7, view8, view9, view10].size .= 150 / 4.0

            stackView.stack(
                view1,
                20,
                [view2, 50, view3],
                20,
                [view4, 50, view5, 50, view6],
                20,
                [view7, 50, view8, 50, view9, 50, view10]
            )
        }
    }

    func createView() -> View{
        let view = View()
        view.backgroundColor = .green
        container.addSubview(view)
        view.layer.borderColor = UIColor.orange.cgColor
        view.layer.borderWidth = 2.0
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
