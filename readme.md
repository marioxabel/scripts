# Just a short compilation of useful scripts

## How to use them:
<br/><br/>
### bulkInstall.sh
this script installs all the apk files in a folder via adb commands.

First it renames them replacing blank spaces in the apk's name with "_" then runs
 ``` adb install ``` for each file in the folder. You should run it inside the folder containg the apk files
<br/><br/>
### bulkInstallWithPath.sh
This a  modification to bulkInstall.sh where you cand add the path of the folder containing the apks as an argument.
Ex.

```bulkInstallWithPath.sh /path/containg/apks```
<br/><br/>

### userInstall.sh
This script targets just one user in the android device. You can verify the user where you want to install the apk files first. You can use 
```adb shell pm list users```