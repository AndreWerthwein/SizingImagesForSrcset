void generateImages(String directoryName, String fileName, PImage image) {
  println("Current Base-Image: " + fileName);
  
  int[] imageSizes = {2400, 1920, 1440, 1200, 1024, 780}; 
  
  for (int i = 0; i < imageSizes.length; i++) {
    if (image.width > imageSizes[i] || image.width == imageSizes[i]) {
      image(image, 0, 0);
      image.resize(imageSizes[i], 0);
      image.save(targetPathName + directoryName + fileName + "-" + imageSizes[i] + ".jpg");
    }
  }
} // generate images based on given sizes
