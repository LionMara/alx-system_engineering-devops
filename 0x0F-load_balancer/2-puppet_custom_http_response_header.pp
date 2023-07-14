# creates a custom HTTP header

exec { 'custom_http_header':
    command   => 'apt-get -y update &&
                 apt-get -y install nginx &&
                 sed -i "/listen 80 default_server;/a add_header X-Served-By $hostname;" /etc/nginx/sites-available/default &&
                 service nginx restart',
    provider  => 'shell',
    path      => '/bin:/usr/bin:/sbin:/usr/sbin',
    logoutput => true,
}
