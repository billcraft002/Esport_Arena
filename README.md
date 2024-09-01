# esports_arena

A new Flutter project.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Ensure that you have the following installed on your system:

Flutter (3.24.1)
Dart SDK (3.5.1)
An IDE (Visual Studio Code are recommended:version 1.90.2) 

### Installation

1.Clone the repository:
    git clone https://github.com/username/yooii-flutter.git

2.Navigate to the cloned directory:
    cd yooii-flutter

3.Get all the dependencies:
    flutter pub get

4.Run the project:
    flutter run


After successful build, your application structure should look like this:

```
├── android              // Android platform-specific files
├── assets               // Images and fonts used in the application
├── ios                  // iOS platform-specific files
├── lib                  // Main Dart code directory
│   ├── main.dart        // Entry point of the application
│   ├── apis             // Directory for API-related functionality
│   │   ├── api_client   // API client and related classes
│   ├── app              // Application-specific logic and structure
│   │   ├── app.dart     // Application routing configuration
│   ├── core             // Core functionalities and utilities
│   ├── gen              // Generated files related to assets
│   ├── generated        // Generated code, possibly for localization
│   ├── l10n             // Localization JSON files
│   ├── Presentation     // Widgets and screens presentation logic        
│   ├── theme            // Application theme and decoration classes
│   ├── utils            // Utility functions and common files
│   ├── widgets          // Custom widget classes
├── pubspec.yaml         // Flutter project configuration and dependencies
├── README.md            // Project documentation file
 
```  

### How to format your code?

- if your code is not formatted then run following command in your terminal to format code
  ```
  dart format .
  ```

### How you can improve code readability?

- Resolve the errors and warnings that are shown in the application.


### Libraries and tools used

- flutter_gen_runner - flutter_gen_runner is a code generation package for Flutter applications that works in conjunction with flutter_gen to generate strongly-typed code for assets like images, fonts, and localization keys. It enhances development by eliminating manual coding for asset references and improving type safety in Flutter projects.

- Assets 
you can just add your image in asset folder and add command in terminal :- command : "flutter packages pub run build_runner build --delete-conflicting-outputs" and you can find Assets path like this "Assets.images.svg.svgSplash.path"

- String
you can just add your String in i10n - here is file for all locale  add your String and add command in terminal :- command : "flutter pub run intl_utils:generate" and you can generate string  and use this string like this "Lang.current.enter_your_email"
[flutter_gen_runner](https://pub.dev/packages/flutter_gen_runner)

- flutter_screenutil - flutter_screenutil is a Flutter package that simplifies the process of designing responsive UIs by providing utilities to adapt the layout and font sizes based on the screen size and pixel density. It helps developers create user interfaces that look consistent across different devices and screen resolutions in a convenient manner.
[flutter_screenutil](https://pub.dev/packages/flutter_screenutil)

projects. It supports various HTTP methods, including GET, POST, PUT, DELETE, and more, allowing developers to easily make HTTP requests to interact with web services and APIs. dio provides features such as interceptors, request cancellation, file uploads, and form data handling, making it suitable for a wide range of networking tasks. It also supports advanced functionalities like HTTP/2, HTTPS, and multipart requests. With dio, developers can efficiently handle network requests and manage responses in their Flutter applications.
[dio](https://pub.dev/packages/dio)

- flutter_svg - flutter_svg is a Flutter package that allows developers to easily display Scalable Vector Graphics (SVG) images in Flutter applications. It provides a widget for rendering SVG images directly, supporting various features such as color and size customization. This package is useful for incorporating vector graphics into Flutter UIs, offering a scalable and resolution-independent solution for displaying graphics.
[flutter_svg](https://pub.dev/packages/flutter_svg)

- google_fonts - google_fonts is a Flutter package that simplifies the integration of Google Fonts into Flutter applications. It allows developers to easily use a wide variety of fonts provided by Google in their Flutter UIs without the need to download or include font files manually. The package provides a convenient way to load and apply Google Fonts to text widgets, enhancing the typography options available in Flutter projects.
[google_fonts](https://pub.dev/packages/google_fonts)

- permission_handler - permission_handler is a Flutter package that simplifies handling runtime permissions in Flutter applications. It provides a unified API to request and check permissions for various platforms, including Android, iOS, macOS, and web. This package streamlines the process of managing permissions by abstracting platform-specific code, making it easier for developers to integrate and manage permission requests within their Flutter projects.
[permission_handler](https://pub.dev/packages/permission_handler)

- flutter_gen - flutter_gen is a Flutter package used for code generation, primarily focusing on asset management, including images, fonts, and more. It enhances the development workflow by generating strongly-typed Dart code based on your assets, eliminating the need to refer to assets using string literals.
[flutter_gen](https://pub.dev/packages/flutter_gen)