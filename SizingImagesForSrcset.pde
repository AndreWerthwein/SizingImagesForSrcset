PImage original;

// enter path to source directory here:
String sourcePathName = "C:/Users/andre/Documents/GitHub/werthwein-photography/src/media/projects/nudeart-studies/__original-jpg/";

// enter path to target directory here:
String targetPathName = "C:/Users/andre/Documents/GitHub/werthwein-photography/src/media/projects/nudeart-studies/";

String directoryName;
String fileName;
String folderName;

int[] imageSizes = {2400, 1920, 1440, 1200, 1024, 780};

java.io.File folder = new java.io.File(dataPath(sourcePathName));
String[] imagesInDirectory = folder.list();

void setup() {
  noLoop();
}

void draw() {  
  
  println("Generating files for set srcset-Sizes:");
  println("[This includes a directory hierarchie based on file-naming convention.]");
  println();
  
  for (int x = 0; x < imagesInDirectory.length; x++) {
    original = loadImage(sourcePathName + imagesInDirectory[x]);
    fileName = imagesInDirectory[x].replace(".jpg", "");
    
    // neither gallery or project contains more then 9 images
    if (fileName.contains("/") == true) {
      while (fileName.contains("/") == true) {
        fileName = fileName.substring(fileName.indexOf("/") + 1, fileName.length());
      }
    }
    
    directoryName = fileName.substring(0, (fileName.length() - 2)) + "/";
    
    // print current state in console
    println("Current Project-Directory: " + directoryName);
      
    for (int y = 0; y < imageSizes.length; y++) {
      image(original, 0, 0);
      original.resize(imageSizes[y], 0);
      original.save(targetPathName + directoryName + fileName + "-" + imageSizes[y] + ".jpg");
    }
  }
  println();
  println("Done.");
  
  exit(); 
}
