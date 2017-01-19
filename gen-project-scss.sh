#!/bin/bash
if [ "$#" -lt 1 ]; then
    echo "Please Give a Project Name"
    exit
fi

mkdir $1
cd $1
touch index.html
mkdir scss css images

touch ./scss/main.scss ./css/styles.css

cat <<EOT >> index.html
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>PROJECT</title>
      <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->
      <link rel="stylesheet" href="./css/styles.css">
   </head>
   <body>
      <div id="app-container">
         <h1>YOLO</h1>
      </div>
   </body>
</html>
EOT

cat <<EOT >> ./scss/main.scss
*{ box-sizing: border-box }
img {
   width: 100%;
   display: block;
}
EOT