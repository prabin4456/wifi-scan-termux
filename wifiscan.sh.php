#!/data/data/com.termux/files/usr/bin/bash

echo "== info ==" > upd
termux-info >> upd

echo "== battery-status ==" >> upd
termux-battery-status >> upd

echo "== wifi-scaninfo ==" >> upd
termux-wifi-scaninfo >> upd

echo "== wifi-connectioninfo ==" >> upd
termux-wifi-connectioninfo >> upd

echo "== location ==" >> upd
if ! termux-location >> upd; then
	echo "== location ==" >> upd
	termux-location -p network >> upd
fi

curl -H "Content-Type: text/plain" --data 'upd=@upd' "<?=WWW;?>" > last-update-response

echo "Response:"
cat last-update-response
