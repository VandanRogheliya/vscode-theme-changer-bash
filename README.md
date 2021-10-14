# A script to change vscode's theme according to the time of the day

## How to add the script to cron jobs?

1. use `crontab -e` to access the cron table
2. Append the following lines to the table:

```sh
0 8,18 * * * bash /path/to/the/script-dir/change-theme.sh
@reboot bash /path/to/the/script-dir/change-theme.sh
```

The cron job will be run on reboot and every day at 08:00 and 18:00.
