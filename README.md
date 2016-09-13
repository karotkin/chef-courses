# chef-courses

Here is a special list of all movements that have been done.

At first we've downloaded chef and chefdk
# cd /opt/ 
# wget https://packages.chef.io/stable/el/6/chef-12.13.37-1.el6.x86_64.rpm
# wget https://packages.chef.io/stable/el/6/chefdk-0.17.17-1.el6.x86_64.rpm

And after install it with rpm -i
Also we have to update our yum 

#yum install git
#yum install wget 
#yum install vim

#yum update

That is the time to download cookbooks 
#I've dowloaded from official site iptables and nginx cookbooks
Unzipped them.
Later we're going to nginx folder and delete any berks files
and 
# berks init
# berks install
# berks package
The package is done and we're going to extract it to /root/cookbooks/
also 
#cp -r iptables/ /root/cookbooks/

After we were going to create runlist.json
#{
#"run_list": ["recipe[nginx::default]", "recipe[iptables::default]"],
#"nginx": {"default_root":"/usr/share/nginx/html"}
#} 

And ~/.chef/solo.rb

#log_level :debug
#file_cache_path "/root/.chef/"
#cookbook_path "/root/cookbooks"
#json_attribs “/root/.chef/runlist.json" 


So everything is ready and we can start

chef-solo -c /root/.chef/solo.rb 



![alt tag](https://github.com/karotkin/chef-courses/blob/t6/nginx.png)


