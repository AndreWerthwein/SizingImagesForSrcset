// enter path to source directory here:
String sourcePathName = "C:/Users/andre/Desktop/affriolante/";

// enter path to target directory here:
String targetPathName = "C:/Users/andre/Desktop/affriolante/";

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
    PImage original = loadImage(sourcePathName + imagesInDirectory[x]);
    
    String fileName = getFileName(x);
    String directoryName = fileName.substring(0, (fileName.length() - 2)) + "/";
    
    println("Current Project-Directory: " + directoryName);
      
    generateImages(directoryName, fileName, original);
  }
  
  println();
  println("Done.");
  
  exit(); 
}
