#!/bin/bash
if [ "$#" -lt 1 ]; then
    echo "Please Give a Project Name"
    exit
fi

mkdir $1
cd $1
touch index.html
mkdir css images

touch ./css/styles.css


cat <<EOT >> index.html
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>PROJECT</title>
      <link rel="stylesheet" href="./css/styles.css">
   </head>
   <body>
      <div id="app-container">
         <h1>Yah Okay</h1>
      </div>
   </body>
</html>
EOT

cat <<EOT >> ./css/styles.css
*{ box-sizing: border-box }

img {
   width: 100%;
   display: block;
}
EOT