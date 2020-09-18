## systemd
This is a tool that is supposed to help run services on linux. It's used on a lot of machines, although not all.

### systemctl
This is how you control systemd. I use it to check on how services are doing. If you don't apply the `.service` suffix to your commands sytemctl will typically put it in.

Start a service: `sudo systemctl start application.service`

Stop a service: `sudo systemctl stop application.service`

Restart a service: `sudo systemctl restart application.service`

Check the status of your service!!!: `systemctl status application.service`

### journalctl
This is how you view logs that journald spits out. This is obviously... a lot of information. Here are some helpful commands I've seen others use:

Filter by time:

* `journalctl --since "2015-01-10 17:15:00" --until "2015-01-11 03:00"`
* `journalctl --since 09:00 --until "1 hour ago"`
* `journalctl --since "1 day ago"`

Filter by service (unit):

* `journalctl -u nginx.service -u php-fpm.service --since today`

You can also pipe it into grep to filter out logs that aren't relevant to the issue at hand.

Here's a nice [tutorial] (https://www.digitalocean.com/community/tutorials/how-to-use-systemctl-to-manage-systemd-services-and-units)