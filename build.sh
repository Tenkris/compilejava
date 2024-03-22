# #!/bin/bash

# # Define the source directory
# SRC_DIR="src"

# # Find all subdirectories under the source directory
# find $SRC_DIR -type d | while read dir; do
#   # Check if there are any .jar files in the directory
#   if [ $(ls $dir/*.jar 2> /dev/null | wc -l) -eq 0 ]; then
#     # If there are no .jar files, compile the .java files into .class files
#     javac $dir/*.java -d $dir/

#     # Create a .jar file from the .class files
#     jar cvf $dir/Q1.jar -C $dir/ .

#     # Clean up the .class files
#     rm $dir/*.class
#   fi
# done





# #!/bin/bash

# # Define the source directory
# SRC_DIR="src"

# # Find all subdirectories under the source directory
# find "$SRC_DIR" -type d | while read dir; do
#   # Check if there are any .jar files in the directory
#   if [ $(ls "$dir"/*.jar 2> /dev/null | wc -l) -eq 0 ]; then
#     # If there are no .jar files, run Gradle to build the project
#     cd "$dir" || exit
#     # Assuming the build.gradle file exists in each directory, 
#     # use the following command to build the project
#     gradle build
#     cd ../../ || exit
#   fi
# done


#!/bin/bash

# # Define the source directory
# SRC_DIR="src"

# # Find all subdirectories under the source directory
# find $SRC_DIR -type d | while read dir; do
#   # Check if there are any .jar files in the directory
#   if [ $(ls $dir/*.jar 2> /dev/null | wc -l) -eq 0 ]; then
#     # Check if there are any .java files in the directory
#     if [ $(ls $dir/*.java 2> /dev/null | wc -l) -gt 0 ]; then
#       # If there are .java files, compile them into .class files
#       javac $dir/*.java -d $dir/

#       # Create a .jar file from the .class files
#       jar cvf $dir/Q1.jar -C $dir/ .

#       # Clean up the .class files
#       rm $dir/*.class
#     fi
#   fi
# done

#!/bin/bash

# Define the source directory
SRC_DIR="src"

# Find all subdirectories under the source directory
find $SRC_DIR -type d | while read dir; do
  # Check if there are any .jar files in the directory
  if [ $(ls $dir/*.jar 2> /dev/null | wc -l) -eq 0 ]; then
    # Check if there are any .java files in the directory
    if [ $(ls $dir/*.java 2> /dev/null | wc -l) -gt 0 ]; then
      # Remove the 'public' modifier from the class declaration
      sed -i 's/public class/class/g' $dir/*.java

      # Compile the .java files into .class files
      javac $dir/*.java -d $dir/

      # Create a .jar file from the .class files
      jar cvf $dir/Q1.jar -C $dir/ .

      # Clean up the .class files
      rm $dir/*.class
    fi
  fi
done