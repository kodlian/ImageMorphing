# ImageMorphing

Apply morphing animation to images. 

Implementation is using 100% SwiftUI API by leveraging SwiftUI animation and Canvas. 

https://user-images.githubusercontent.com/4249097/193521856-17ec03ea-4a33-481d-808b-0c21d142509b.mp4

## Adding Image Morphing as a Dependency
Add package to XCode or in a `Package.swift`

```swift
.package(url: "https://github.com/kodlian/ImageMorphing", from: "1.0.0"),
```

## Usage

Use MorphingImage as you will do with standard Image:

```swift
MorphingImage("MyImage") // custom asset
    .frame(width: 64, height: 64)

MorphingImage(systemName: "heart.fill") // SF Symbol
    .frame(width: 64, height: 64)
```

When the image changes, a morphing animation will be performed between the old and new images. The base images are only used as template, the resulting image applies the foreground style currently defined in the context.

Duration of morphing animation can be customized through a modifier:

```swift
MorphingImage(..)
    .morphingImageDuration(1.5)
```
