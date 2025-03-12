String getFileName(int index) {
  String name = imagesInDirectory[index].replace(".jpg", "");
    
    // neither gallery or project contains more then 9 images
    if (name.contains("/") == true) {
      while (name.contains("/") == true) {
        name = name.substring(name.indexOf("/") + 1, name.length());
      }
    }
    
    return name;
} // getting file name from source path
