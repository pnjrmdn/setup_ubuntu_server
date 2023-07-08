source : chat gpt
# create user database directus
CREATE USER 'pnjrmdn'@'%' IDENTIFIED BY 'zxcvbnm';
CREATE DATABASE directus_database CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
GRANT ALL PRIVILEGES ON directus_database.* TO 'pnjrmdn'@'%';
FLUSH PRIVILEGES;
EXIT;


Untuk menginstall Directus di VPS Ubuntu, berikut adalah panduan langkah demi langkah secara detail:

Langkah 1: Masuk ke VPS Anda

Buka terminal atau SSH ke VPS Anda dengan menggunakan alat seperti PuTTY (untuk sistem operasi Windows) atau terminal bawaan (untuk sistem operasi Linux atau macOS).
Masukkan alamat IP VPS Anda dan kredensial login yang valid untuk masuk.
Langkah 2: Pembaruan Sistem

Sebelum memulai instalasi, perbarui paket sistem operasi Ubuntu dengan perintah berikut:
sql
Copy code
sudo apt update
sudo apt upgrade
Langkah 3: Instalasi Dependensi

Directus membutuhkan beberapa dependensi untuk berfungsi dengan baik. Instalasikan dependensi yang diperlukan dengan perintah berikut:
python
Copy code
sudo apt install curl gnupg php-cli php-mbstring php-xml php-curl php-zip php-gd php-mysql php-pgsql php-sqlite3 php-ldap php-imagick php-dev libmagickwand-dev mysql-server
Langkah 4: Konfigurasi Pangkalan Data (Database)

Selanjutnya, kita perlu mengkonfigurasi pangkalan data untuk Directus. Anda dapat memilih antara MySQL atau PostgreSQL. Dalam panduan ini, kita akan menggunakan MySQL.
Jalankan perintah berikut untuk mengatur MySQL:
Copy code
sudo mysql_secure_installation
Ikuti petunjuk untuk mengkonfigurasi kata sandi root MySQL dan pilihan keamanan lainnya.
Langkah 5: Membuat Pengguna dan Database MySQL

Masuk ke MySQL dengan perintah:
css
Copy code
sudo mysql -u root -p
Setelah masuk, buat pengguna dan pangkalan data untuk Directus. Ganti 'directus_user', 'directus_password', dan 'directus_database' dengan informasi yang Anda inginkan:
sql
Copy code
CREATE USER 'directus_user'@'localhost' IDENTIFIED BY 'directus_password';
CREATE DATABASE directus_database CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
GRANT ALL PRIVILEGES ON directus_database.* TO 'directus_user'@'localhost';
FLUSH PRIVILEGES;
EXIT;
Langkah 6: Instalasi Node.js dan NPM

Directus menggunakan Node.js sebagai runtime lingkungan. Untuk menginstal Node.js dan NPM, jalankan perintah berikut:
arduino
Copy code
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install -y nodejs
Langkah 7: Instalasi Yarn

Yarn adalah manajer paket yang akan digunakan untuk mengelola dependensi Directus. Instal Yarn dengan perintah berikut:
Copy code
npm install -g yarn
Langkah 8: Instalasi Directus

Instal Directus menggunakan Yarn dengan perintah berikut:
csharp
Copy code
yarn global add directus
Langkah 9: Konfigurasi Directus

Setelah instalasi selesai, Anda perlu mengkonfigurasi Directus. Masuk ke direktori proyek Directus dengan perintah berikut:
bash
Copy code
cd $(yarn global dir)/directus
Buat berkas konfigurasi dengan perintah:
bash
Copy code
cp example.env .env
Buka berkas .env untuk diedit:
bash
Copy code
nano .env
Ubah nilai DATABASE_CLIENT=mysql menjadi DATABASE_CLIENT=mysql (jika Anda menggunakan MySQL) atau DATABASE_CLIENT=pg (jika Anda menggunakan PostgreSQL).
Ubah DATABASE_HOST, DATABASE_PORT, DATABASE_NAME, DATABASE_USERNAME, dan DATABASE_PASSWORD sesuai dengan konfigurasi MySQL yang telah Anda buat sebelumnya.
Langkah 10: Jalankan Migrasi dan Server

Jalankan perintah migrasi untuk membuat tabel dan skema pangkalan data Directus:
css
Copy code
directus install --email admin@example.com --password admin --no-interaction
Ganti admin@example.com dan admin dengan informasi login yang Anda inginkan.
Setelah migrasi selesai, jalankan server Directus:
sql
Copy code
directus start
Langkah 11: Akses Directus

Buka browser web dan masukkan alamat IP VPS Anda diikuti oleh port 8055 (misalnya, http://<IP_VPS>:8055) untuk mengakses antarmuka Directus.
Masukkan informasi login yang telah Anda atur sebelumnya (email dan kata sandi admin) untuk masuk ke panel admin Directus.
Itulah panduan detail untuk menginstal Directus di VPS Ubuntu. Pastikan Anda mengikuti langkah-langkah dengan hati-hati untuk menghindari kesalahan. Selamat mencoba!