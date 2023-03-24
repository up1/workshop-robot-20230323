# workshop-robot-20230323

Check software requirement
```
$python -V
$pip -V
$robot
```

Install robotframework and library
```
$pip install robotframework
$pip install robotframework-seleniumlibrary
```

Run robot
```
$robot hello.robot

// Run with varialbles
$robot -v MY_URL:http://www.facebook.com -v MY_BROWSER:edge hello.robot

// Custom report with timestamp
$robot -T hello.robot

// Custome folder of report
$robot -d demo01 hello.robot
```
