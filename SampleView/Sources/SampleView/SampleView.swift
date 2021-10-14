import SwiftUI

@available(iOS 13.0, *)
public struct SampleView {
    var text = "Hello, World!"
}

@available(iOS 13.0, *)
public struct SampleListView: View {
    public init() {
        
    }
    public var body: some View {
        List {
           // 一行目
           Text("item1")
           // 二行目
           Text("item2")
           // 三行目
           Text("item3")
        }
    }
}
