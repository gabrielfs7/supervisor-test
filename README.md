# Supervisor Test

## Executing supervisor test

'''
sudo supervisord -n -c supervisord.conf
'''

## Installing supervisord-monitor

Clone the project

'''
cd my/dir/ && git clone https://github.com/mlazarov/supervisord-monitor.git
'''

Inside the project

'''
cp application/config/supervisor.php.example application/config/supervisor.php
'''

Edit [application/config/supervisor.php] and add your server by editing this configuration part:

'''
$config['supervisor_servers'] = array(
    'server01' => array(
                'url' => 'http://127.0.0.1/RPC2',
                'port' => '9001',
                'username' => 'user',
            'password' => '123'
     )
);
'''

### Configure your web server

Apache VHOST example:

'''
<VirtualHost *:80>
    DocumentRoot my/dir/supervisord-monitor/public_html
    ServerName supervisord-monitor.com
    DirectoryIndex index.php index.html

    <Directory "my/dir/supervisord-monitor/public_html">
        AllowOverride All
    </Directory>
</VirtualHost>
'''

Edit your /etc/host by adding this line

'''
127.0.0.1 supervisord-monitor.com
'''

Now restart your apache and access the following url:

'''
http://supervisord-monitor.com/
'''

## Access web console

'''
http://127.0.0.1:9001
'''