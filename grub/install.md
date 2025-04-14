## Installing a GRUB theme

- Copy theme into grub themes directory
    ``` sudo cp -r mocha-grub /usr/share/grub/themes ```
- Edit the following line from /etc/default/grub
    ``` GRUB_THEME="/usr/share/grub/themes/mocha-grub/theme.txt" ```
- Update grub
    ``` sudo grub-mkconfig -o /boot/grub/grub.cfg ```
