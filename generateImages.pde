void generateImages(String directoryName, String fileName, PImage image) {
  println("Current Base-Image: " + fileName);
  
  int[] sizesOrientationLandscape = {2048, 1600, 1024, 640};
  int[] sizesOrientationPortrait = {1600, 1024, 768, 480};
  
  // using the appropriate sizes depending on image orientation
  int[] sizes = isOrientationLandscape(image) ? sizesOrientationLandscape : sizesOrientationPortrait;
  
  for (int i = 0; i < sizes.length; i++) {
    if (image.width > sizes[i] || image.width == sizes[i]) {
      image(image, 0, 0);
      image.resize(sizes[i], 0);
      image.save(targetPathName + directoryName + fileName + "-" + sizes[i] + ".jpg");
    } else {
      print("Attention: The base-image '" + fileName + "' was skipped at the size '" + sizes[i] + "' since the size of the base-image is insufficient."); 
    }
  }
} // generate images based on given sizes
