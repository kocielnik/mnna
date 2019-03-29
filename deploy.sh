remote=notes
srv_dir=/var/www/html/mnna

rsync css/style.css $remote:~
ssh $remote "sudo mv style.css ${srv_dir}/css/style.css"

rsync css/layout.css $remote:~
ssh $remote "sudo mv layout.css ${srv_dir}/css/layout.css"

rsync js/nav.js $remote:~
ssh $remote "sudo mv nav.js ${srv_dir}/nav.js"

rsync mnna.html $remote:~
ssh $remote "sudo mv mnna.html ${srv_dir}/index.html"

rsync mnna.pdf $remote:~
ssh $remote "sudo mv mnna.pdf ${srv_dir}/mnna.pdf"

rsync mnna.epub $remote:~
ssh $remote "sudo mv mnna.epub ${srv_dir}/mnna.epub"
