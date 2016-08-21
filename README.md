# itamae-rails

## Description
You can set up rails environment in your server with the provisioner, itamae.  
Itamae is simple and lightweight configuration management tool inspired by Chef.  
This README guides you to run itamae for vagrant server, but with a little customization, you could also use this provisioner for your cloud server like aws ec2 instance.


## Requirement

- ruby 2.x
- vagrant 1.8.x


## Usuage

Install itamae.
```
gem install itamae
```

In node.json file, you can change installing package's versions and postgres user setting.
```
vi nodes/node.json
```

Set up vagrant server with your vagrant box. CentOS 6.x is recommended.
```
vagrant init your_box
vagrant up
```

Run itamae against your vagrant server.
```
itamae ssh --vagrant --node-json itamae/nodes/node.json itamae/recipes/base.rb
```

You can run itamae with debug mode.
```
itamae ssh --vagrant --node-json itamae/nodes/node.json itamae/recipes/base.rb -l debug
```