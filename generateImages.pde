void generateImages(String directoryName, String fileName, PImage image) {
  int[] imageSizes = {2400, 1920, 1440, 1200, 1024, 780};
  
  for (int y = 0; y < imageSizes.length; y++) {
      image(image, 0, 0);
      image.resize(imageSizes[y], 0);
      image.save(targetPathName + directoryName + fileName + "-" + imageSizes[y] + ".jpg");
    }
} // generate images based on given sizes
