Automidnight
=====


![alt text](http://ecx.images-amazon.com/images/I/515oQdDHwmL.jpg "Automatic midnight")

To set up the Monroe Park pilot, you'll want to set a MONROE\_PILOT environment variable on your server to true.

For example, on Heroku:
```
heroku config:set MONROE_PILOT=true
```

To get going, you'll need to run the following rake tasks in this order:

```
rake db:migrate
rake reset:voice_files
rake reset:questions
rake property_data:import
rake property_data:add_monroe_phone_codes
```

In production, you may want to set up Google Analytics (hard-coded ID for now, so need to tinker) with the environment variable used as a flag:

- GOOGLE_ANALYTICS_ON=true

If you want HTTP basic authentication enabled, you can set the following environment variables:

- LOCK\_CITYVOICE=true
- CITYVOICE\_LOCK\_USERNAME=myusername
- CITYVOICE\_LOCK\_PASSWORD=mypassword

