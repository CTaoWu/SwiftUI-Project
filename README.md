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
> * TabbedView:  
    - 类似UITabbarController   
    - 需要给view添加tag，tag使用来做切换展示界面的标识
```swift
        TabbedView(selection: $current) {
            FirstPage()
                .tabItemLabel(
                    VStack {
                        Image(self.images[0])
                        Text(self.labs[0])
                    }
            ).tag(0)
            SecondPage()
                .tabItemLabel(
                    VStack {
                        Image(self.images[1])
                        Text(self.labs[1])
                    }
            ).tag(1)
            ThirdPage()
                .tabItemLabel(
                    VStack {
                        Image(self.images[2])
                        Text(self.labs[2])
                    }
            ).tag(2)
            ContentView()
                .tabItemLabel(
                    VStack {
                        Image(self.images[3])
                        Text(self.labs[3])
                    }
                ).tag(3)
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
    
