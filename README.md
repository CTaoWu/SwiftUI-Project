# SwiftUI-Project
学习过程中，做点笔记，快速熟悉SwiftUI内容和代码样式       
如有错误的地方欢迎指出
==================

注意：（在例子中，一个容器声明里加入的容器如果超过10个，就报错了）ViewBuilder 只实现了最多十个参数的 buildBlock，内部声明超过10个以后，编译会报错……
```swift
extension ViewBuilder {

    public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8, C9>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8, _ c9: C9) -> TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8, C9)> where C0 : View, C1 : View, C2 : View, C3 : View, C4 : View, C5 : View, C6 : View, C7 : View, C8 : View, C9 : View
}
```
如下，苹果给View添加了拓展
```swift
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {

    /// Returns a version of `self` that will invoke `action` after
    /// recognizing a tap gesture.
    public func tapAction(count: Int = 1, _ action: @escaping () -> Void) -> _AutoResultView<Self>
}

```

常用布局--  
=========
> * VStack:  垂直分布声明
> * HStack:  水平分布声明
> * ZStack:  叠加分布声明
> * List:    (UITableView)内置好了cell，只需在里面添加好了需要的子view
> * ScrollView: 可滚动容器

导航和标签--  
=========
> * TabbedView:  类似UITabbarController
```swift
/// A view which allows for switching between multiple child views using
/// interactable user interface elements.
///
/// - Note: `TabbedView` only supports tab items of type `Text`, `Image`, or a
/// `LayoutView` of `Image` and `Text`. Passing any other type of view will
/// result in a visible, empty tab item.
@available(iOS 13.0, OSX 10.15, tvOS 13.0, *)
@available(watchOS, unavailable)
public struct TabbedView<SelectionValue, Content> where SelectionValue : Hashable, Content : View {

    /// Creates an instance that selects from content associated with
    /// `Selection` values.
    public init(selection: Binding<SelectionValue>, content: () -> Content)

    /// The type of view representing the body of this view.
    ///
    /// When you create a custom view, Swift infers this type from your
    /// implementation of the required `body` property.
    public typealias Body = Never
}
```

常用控件--
=========
> * Text:  
> * TextField: 
> * Image:
> > resizable()方法调用后才能修改属性
> > 没有找到图片，会出错，最好重写方法
> * Slider: from-->滑动开始的值，through-->最大值
```swift
struct SliderPage : View {
    
    @State var bindingValue = 2.0
    var body: some View {
        VStack {
            Text("\(bindingValue)")
            Slider(value: $bindingValue, from: 3, through: 10) { (true) in
                print("\(self.bindingValue)")
            }
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            Text(" from：滑动开始的值，through：最大值")
        }
    }
}
```
> * NavigationButton:  
> * PresentationButton:  
    
