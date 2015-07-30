# Property List Swift Playground

Janie Clayton: [@redQueenCoder](https://twitter.com/RedQueenCoder)

Brad Larson: [@bradLarson](https://twitter.com/BradLarson)

[SonoPlot Company Website](http://www.sonoplot.com)

[Red Queen Coder's blog](http://redqueencoder.com/)

##What is this project?

This is a sample project that I created to supplement [a blog post](http://redqueencoder.com/property-lists-and-user-defaults-in-swift/) that I wrote about several language features in Swift 2.0 that are not possible in Objective-C.

This is drawn from the software rewrite of the legacy SonoGuide program produced by SonoPlot and bundled with the Microplotter robotics systems.

In the playground, I am showing how to take what used to be an object (a coordinate) in Objective-C and rewriting it as a stuct. We utilized the NSUserDefaults to store a few coordinates and this code also shows the changes we had to make to the underlying structure to be able to make it compliant to be saved to the defaults.

The specific features covered are:
- Guard
- FlatMap()
- Protocols
- Extensions

This is not intended to be a stand-alone project, it is meant to be a visual supplement to a write-up on the concepts used to create the code. Nothing in here is proprietary, but it is highly targeted to our specific needs.
