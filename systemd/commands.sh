#!bin/bash

# İlgili git reposunun /opt/konzek-task konumuna klonlandığını varsayarak aşağıdaki işlemleri yapıyorum:
cd /opt/konzek-task/systemd

pip3 install -r requirements.txt

touch /var/log/konzek.log
chown /var/log/konzek.log
chmod 644 /var/log/konzek.log

cat ./konzek.service > /etc/systemd/system/konzek.service

# yazılan dosyasının syntax'ını doğrular
systemd-analyze verify /etc/systemd/system/konzek.service

# dosyadan sonra dosyanın systemd tarafından okunmasını sağlar
systemctl daemon-reload

# servisi başlatır ve başlangıca ekler
systemctl enable --now konzek.service

# Uygulama başlar. Localhost'ta çalıştığı için nginx reverse proxy ile bunu dışarıya açmak gereklidir.

