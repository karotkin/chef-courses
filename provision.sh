#!/bin/bash
rpm -i /vagrant/soft/chefdk-0.17.17-1.el6.x86_64.rpm
cp /vagrant/soft/jboss-5.1.0.GA.zip /opt
cp -R /vagrant/.chef/ ~/
cp -R /vagrant/cookbooks/ ~/
sudo chef-solo -c /root/.chef/solo.rb > /vagrant/output-chef.log
