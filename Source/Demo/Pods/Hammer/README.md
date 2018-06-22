<p align="center" >
	<img src="/Images/logo_2048_2048.png" alt="Hammer" title="Hammer" width="300px" height="300px">
</p>

<p align="center">
	<a href="https://swift.org">
		<img src="https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat">
	</a>
	<a href="https://cocoapods.org">
		<img src="https://img.shields.io/cocoapods/v/Hammer.svg">
	</a>
	<a href="https://cocoapods.org">
		<img src="https://img.shields.io/cocoapods/dt/Hammer.svg">
	</a>
	<a href="https://tldrlegal.com/license/mit-license">
		<img src="https://img.shields.io/badge/License-MIT-blue.svg?style=flat">
	</a>
</p>

## At a Glance

`Hammer` is a powerful tool for solving common tasks with classes and objects.

## How To Get Started

- Copy content of `Source` folder to your project.

or

- Use `Hammer` cocoapod

## Requirements

* iOS 9 and later
* Xcode 9 and later
* Swift 4

## Usage

### Classes

Retrieve class name:

```swift
let classNameWithNamespace = MainViewController.hmr.fullName     // "MyApplication.MainViewController"
let classNameWithoutNamespace = MainViewController.hmr.shortName // "MainViewController"
```

Instead of `hmr`, you can also use hammer emoji:

```swift
let classNameWithNamespace = MainViewController.🔨.fullName     // "MyApplication.MainViewController"
let classNameWithoutNamespace = MainViewController.🔨.shortName // "MainViewController"
```

### Objects

Use object in external closure:

```swift
let label = UILabel().hmr.use { (label) in
            label.text = "This is a label"
}.object
```

Use object converted to another type in external closure:

```swift
let view = SomeView().hmr.use(as: UILabel.self) { (label) in
    label.text = "This is a label"
}.object
```

Also, you can use `🔨` as a replacement for `hmr`:

```swift
let view = SomeView().🔨.use(as: UILabel.self) { (label) in
    label.text = "This is a label"
}.object
```

### Patterns

#### Model Holder

`ModelHolder` is a protocol for implementation of `model` field inside of class:

```swift
class MainViewController: UIViewController, ModelHolder {

    var model: String {
        get {
	    return self.titleLabel.text ?? ""
	}
	set {
	    self.titleLabel.text = newValue
	}
    }

}
```

In example above, the `model` is `String`. Actually, model can be of any type, it's up to developer which type to implement.

#### Nullable Model Holder

Represented by `NullableModelHolder` protocol. Actually, it's the same as `ModelHolder`, but the model is of nullable type:

```swift
class MainViewController: UIViewController, NullableModelHolder {

    var model: String? {
        get {
	    return self.titleLabel.text
	}
	set {
	    self.titleLabel.text = newValue
	}
    }

}
```

## License

`Hammer` is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.
