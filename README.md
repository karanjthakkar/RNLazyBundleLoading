# Lazy Bundle Loading in React Native

---

This repo is a working example of loading a javascript bundle lazily inside a React Native app. You can find the detailed blogpost for this [here](https://medium.com/@karanjthakkar/lazy-bundle-loading-in-react-native-5f717b65482a).

### Running the project locally

- Open [ios/RNLazyBundleLoading.xcodeproj](https://github.com/karanjthakkar/RNLazyBundleLoading/tree/master/ios/RNLazyBundleLoading.xcodeproj) in XCode
- Run the project by clicking on the `Play` button or using `Cmd + R`
- Quit the packager window that is opened up so the app loads from the pre-built bundle instead of the local metro packager. This is needed because lazy loading currently only works with pre-built bundles.

### Demo

![Demo](demo.gif)

