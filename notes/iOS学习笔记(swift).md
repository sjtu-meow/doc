#iOS学习笔记(swift)
##Values & Types
1. 定义
	- 无类型定义变量：var / let
	- 确定类型定义：var a : Double = 40.0
2. 类型转换
	- 不存在隐式转换
	- \() : numbers to string
3. Array & Dictionary
	- definition
	- empty: \[String]() / \[Int: String]()
4. ?  
Write a question mark (?) after the type of a value to mark the value as optional.

##Control Flow
1. if / switch
	- if let  
	if let name = optionalName {
   		 greeting = "Hello, \(name)"
	}
2. for in

##Functions
- 声明：  
	func name(para1: String, para2: Int) ->String{}
- 调用：  
	name(para1: value1, para2: value2)
	
##Classes
- init()
- 继承，函数override
- get/set, newValue
- willSet

##Enumeration&Struct
1. enum
2. struct

##Protocals&Extensions
1. protocal类似接口	
	- `mutating` to mark a method that modifies the structure
	- class, emueration, struct都可以实现接口
2. extension  
to add functionality to an existing type, such as new methods and computed properties