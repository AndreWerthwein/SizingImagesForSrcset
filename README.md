# Sizing images for `<srcset>`-Attribute

This is a small Processing-Sketch, that automatically generates all the `<srcset>`-Resources needed for an application, when given a directory of Resources.

# How to use?

1. Define necessary `<srcset>`-Values.
2. Prepare a single directory containing all the base-images, for which variations -- based on `<srcset>`-Values -- need to be generated.
3. Input `<srcset>`-Values into the `imageSizes`-Array.
4. Input the _Source Directory_ in `sourcePathName`.
5. Input the _Target Directory_ in `targetPathName`.
6. Hit the "Play"-Button.

# Notes 

- This was designed in / for [Processing 4](https://processing.org/)