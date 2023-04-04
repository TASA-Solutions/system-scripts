# cron/network_stat/network_info.sh

## crontab

Add this to crontab -e using below script to run every minute

```
* * * * * HOME=/Users/mac_user PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin /bin/bash /Users/mac_user/Desktop/repo/scripts/cron/network_stat/network_info.sh
```

Replace `/mac_user` with you're profile name

## Automater - MAC Only

1. Open Automator on your Mac by searching for it in Spotlight or by navigating to Applications > Automator.

2. When Automator opens, select "Application" as the type of document you want to create, and click "Choose."

3. In the left-hand pane, select "Utilities" from the list of actions.

4. From the list of actions that appears, drag the "Run Shell Script" action into the right-hand pane.

5. In the "Run Shell Script" action, choose "bash" as the shell and enter the script you want to run in the text box. Make sure the script is saved in a location that the Automator application has access to.

6. Add below code in input

```
/bin/bash /Users/mac_user/Desktop/repo/scripts/cron/network_stat/network_info.sh
```

Replace `mac_user` with you're profile name

7. Once you have entered your script, click "File" in the menu bar, and choose "Save."

8. Give your application a name and choose where you want to save it.

9.  When you click "Save," Automator will create an application that runs your script when you double-click it.

10. Go to Login Items and add the save application file.