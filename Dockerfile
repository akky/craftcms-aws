FROM blackpepper/craftcms

ADD dist /var/www/html
ADD src/templates /var/www/craft/templates
