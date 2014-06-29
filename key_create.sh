#!/bin/bash
AUTHFILE=~/.ssh/authorized_keys
PUB="ssh-rsa ABAAB3NzaC1yc2EAAAABIwAAAQEA0ODytizWnCRC8A7UXTH9o45eewj1KpAl4HFdjCSWV2ay5PRLo5QQpvX62gBRptxtDfzbyVTZGERBPw74uPrkprGBowObJI+MZUSxN9Lb/dZGzeKvaWySwebVwT++4Veak5Rv+FRwbQa3VrTjurxSwvQaob3SA3vlzf83V1et1uiEq5F3HvBGdp9JtjSsWu8waG6Cktmorr9DoOj+4q8joLnVoEB5hG7UaZa0QGig+I0jMv8izF7BD35H+FfHGd5TdCiG33HZ1CxN8BkQtS6+NDZi/ThKqWXlouJGK7wSAQF/J07Zm45J0G//hsZxJ29PJcfGEQSivAxUA5DRiCeFyw== "`whoami`@`hostname -f`

### ここからkeyが既に作成済みの場合

pubc () {
	mkdir_ssh
        cat << EOF > $AUTHFILE
$PUB
EOF
        chmod 600 $AUTHFILE
        echo ".ssh is create"
        cat $AUTHFILE
}

mkdir_ssh () {
        mkdir ~/.ssh
        chmod 700 ~/.ssh
}

### ここまでkeyが既に作成済みの場合


### ここからスクリプト削除
me_delete (){
        rm -i $0
}
#### ここまでスクリプト削除

keyc (){
        ssh-keygen  -t rsa -N "" -f ~/.ssh/`whoami`
        mv ~/.ssh/`whoami`.pub $AUTHFILE
        chmod 600 $AUTHFILE
        echo "### Copy the following ###"
        cat ~/.ssh/`whoami`

        echo "##########################"
        rm ~/.ssh/`whoami`
        echo "### key deleted ###"
}

### 実際の稼働スクリプト

#key_add (){
if [ ! -d ~/.ssh ]; then
        echo "### key create now. ####"
        $1
        elif [ -f  ~/.ssh/`whoami`.pub ]; then

        echo "### ~/.ssh/`whoami`.pub was exist. ####"
 		elif [ -f $AUTHFILE ]; then
                        echo "###" $AUTHFILE "was exist."
                        cat $AUTHFILE
                        exit
        else
		$1

 
fi
 exit 0
#
#me_delete
