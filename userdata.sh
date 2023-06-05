#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "<!DOCTYPE html>
<html>
<head>
    <title>Introduction</title>
    <style>
        body {
            background-color: #d8e2dc;
            font-family: Arial, sans-serif;
            color: #3c415e;
            text-align: center;
            padding: 50px;
        }
        h1 {
            font-size: 3em;
            margin-bottom: 20px;
            text-shadow: 0 2px 2px rgba(0,0,0,0.1);
        }
        p {
            font-size: 1.5em;
            line-height: 1.5;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
    <h1>This is Dhananjay.</h1>
    <p>I am going to be a DevOps Pro</p>
</body>
</html>" > /var/www/html/index.html
sudo systemctl restart apache2
