scrot /tmp/lockscreen.png
convert /tmp/lockscreen.png -scale 10% -scale 1000% /tmp/lockscreen.png
i3lock -i /tmp/lockscreen.png
rm /tmp/lockscreen.png
