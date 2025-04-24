echo "Copying theme into grub theme dirctory"
sudo cp -r mocha-grub /usr/share/grub/themes/

echo "Editing /etc/default/grub"
sudo vim /etc/default/grub

echo "Updating grub config"
sudo grub-mkconfig -o /boot/grub/grub.cfg
