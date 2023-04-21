# Just a short compilation of useful scripts

## adb (Android debug bridge) related commands:
**Note: this examples assume the folder cointaing the scripts has been added to PATH and the scripts are executable (chmod +x "script name")**

Requirements

- Android device with USB debugging enabled.
- ADB (Android Debug Bridge) installed on your computer.

### bulkInstall.sh
this script installs all the apk files in a folder via adb commands.

First it renames them replacing blank spaces in the apk's name with "_" then runs
 ``` adb install ``` for each file in the folder. You should run it inside the folder containg the apk files.
 ```console
foo@bar:~/apksFolder$ bulkInstall.sh
```
 

### bulkInstallWithPath.sh
This a  modification to bulkInstall.sh where you cand add the path of the folder containing the apks as an argument.

```console
foo@bar:~$ bulkInstallWithPath.sh /path/containg/apks
```

### userInstall.sh
This script targets just one user in the android device. You can verify the user where you want to install the apk files first. You can use the following command to list all users:

```console
foo@bar:~$ adb shell pm list users
```
Expected output (not exactly but something like this)
```console
$ adb shell pm list users
UserInfo{0:Owner:c13} running
    UserInfo{10:"name of user":400}
    UserInfo{11:"name of user":400}
    UserInfo{12:"name of user":400}
```