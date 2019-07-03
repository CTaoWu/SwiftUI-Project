# SwiftUI-Project
学习-SwiftUI
学习过程中，做点笔记，快速熟悉SwiftUI内容和代码样式

注意：（在例子中，一个容器声明里加入的容器如果超过10个，就报错了）ViewBuilder 只实现了最多十个参数的 buildBlock，内部声明超过10个以后，编译会报错……
```swift
extension ViewBuilder {

    public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8, C9>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8, _ c9: C9) -> TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8, C9)> where C0 : View, C1 : View, C2 : View, C3 : View, C4 : View, C5 : View, C6 : View, C7 : View, C8 : View, C9 : View
}
```

> 布局声明--  
> > * VStack:  垂直分布声明
> > * HStack:  水平分布声明
> > * ZStack:  叠加分布声明

> 常用控件--  
> > * Text:  
> > * TextField:  
> > * NavigationButton:  
> > * PresentationButton:  
    
