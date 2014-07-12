# keycreate

sshを使ってログインする際に、使用するkeyを簡単に作成するシェルスクリプトです。

## インストール

    git clone https://github.com/mkuwamura/keycreate.git

しても構いませんし、シェルスクリプト自体をコピーしても構いません。

## 概要


## 設定
### オプション:

+ pubc


    (内容)
    
    スクリプト内の[PUB=]変数に事前に作成された公開鍵を記載します。
    大量に公開鍵をコピーする場合に、使用することを想定してます。

    $ sh ey_create.sh pubc

+ keyc


    (内容)
    
    秘密鍵、公開鍵のセット作成します。すでにある場合は、作成を停止します。
    スクリプト実行時、秘密鍵が表示されますので、表示されたものをクライアント側に
    コピーしてください。

    

### 実行例

    git clone https://github.com/mkuwamura/keycreate.git
    cd keycreate
    sh key_create.sh keyc

出力結果



    [mkuwamura@xxxxxx01 ~]$ sh key_create.sh keyc
    ### key create now. ###
    Generating public/private rsa key pair.
    Created directory '/home/mkuwamura/.ssh'.
    Your identification has been saved in /home/mkuwamura/.ssh/mkuwamura.
    Your public key has been saved in /home/mkuwamura/.ssh/mkuwamura.pub.
    The key fingerprint is:
    f6:0c:97:5c:ed:55:8e:5b:90:5c:af:49:3b:b1:79:5b mkuwamura@xxxxxx01
    The key's randomart image is:
    +--[ RSA 2048]----+
    |             ..oo|
    |             .o+o|
    |            . = =|
    |         . o o @ |
    |        S +   X E|
    |       . =     oo|
    |          o    . |
    |                 |
    |                 |
    +-----------------+
    ### Copy the following ###
    -----BEGIN RSA PRIVATE KEY-----
    MIIEoQIBAAKCAQEAv8h7lBGMnN+N9sUo9HAvaWem7y1yY8+QkR1MnUtmxx2QaG8m
    WwLVtGhKkSl5IkgvB2vxQsHHg0ZVyO997navsCPrHKkT6CxaE5hSlaWvmToyZ/zq
    hJD4XIsJ3S1pn3Aa4tyJeyzkQvYDTC2Dx3rpsq4irwNn9vG0oJvslqPQufFh/ons
    3s1KftZ7K8sBWTxDwzw3MlHZstD7bWt2bJKiaCiPZTuJa1pHv30Cqu3u11smqVXP
    D0jduUNw9kP1Ovo/iCOMU8dyrNFsZajAimVYjsLZUvb81wnmnxVCgP85ga8tGSKt
    tZeVTS1kRgU1MdZVXRjFaDC3EQkI3GIb5PTLLQIBIwKCAQEAjnesQhuqSKYRsAAt
    DVqm4JYkPKVq6w84MUj3FcL75F8a0TygJlnglKU+tPo8umGCBYNiw+BoUuPKsoYF
    xxZWoBqup5OLIYAIZlPlk7zo2DncTT+JpE5vWrBtuj7+AWk4i0S95nkemCR3emr0
    LckFYCmWG5whWFvIAkfxlHmw/ycMpEaqpo6MbLxrM67+iPUtJUE2+dKx4xBLEw4k
    foUYkYYUqgHVi9PaA8BN+SPIzN1EE5/37B0L/iKTC6nBJX7sAHP8opJlPB426nLm
    6irBfGt6oLh9LXexDykBVS3rheH85dSK6ZQCvPUdJWNBk3xTjQYd4gAt303L23MM
    /CKW0wKBgQD0ZErylrXlWuTwDZqF7jN7E0xZ/0GpWcdvsPNQ8CSx5CINVMHjnEy5
    j4E3XVlcAngyq4iScleZg9WDrP4JK6CiXJpPPDPmqO4SKUwnCQ93cFFyIBuKCTGZ
    U4KasAhparco/6L1OZuLHuXTJY6P8vy420eD4w6kgoh4MKtX8TRQDwKBgQDI5H1j
    VDAeQsyEp2Jzi0iVwrWdCiXKuxEmrKoIDTDs+zR58Ire9Uj8ZgLEzPgYN0Lw9xNu
    3xjvJD9ias220wdfebIGi3+09+IQT4bYz/TwWWqQ5FlAcxmj3oyv3kywk/kIRpLW
    GiryzXPCgdN+M2N6zdLeN1zof3B0ZsNGKi91AwKBgHa0XurbfOu+bzLEx2WflVkJ
    X5ltWmgy69cqD8g6IHOpUl4/HFicX8fX/O8BdIvGr2kRfNlqvNWJLTFUBlw5ww0I
    aDUdPcfOZQGBxecTB4Mn7QuL8B55fn2sOB8/jw6hjCnbQIW85SZQ1gd4pFSL9xf1
    eoHjUEFGt1BSJ1aZulLFAoGAYZONXCGTtu0+xBbJa1JH07ZYNlVi0C75s7LzgEDr
    4NHJCAce4VKRKiLrZuc2rK0gg6s1UxvnihjrljPgQtuHPQCYTFJimbo6mjVBf0Bv
    p/DqniXE82sbFRRS9lYH/f66yYFdQ2vLt8LgdGrxslN5dil1DNkP3qRMkE8rpby3
    9wECgYBmNJIRkDOiayxu1Z6gPtjnNweI6G+U/YGhGoa4CRVIUmyOzSjs9k32myj9
    0stq6Vo7lFQSjR9yxLjagEfvHSO7CtaXRZvH1rZcy7p2eTn0My65RRSfZbsfa566
    IAf7ytS1REYKgAAfgZM43bKp2f4GT6SpcdxjAKRRo6kHCFZ8wg==
    -----END RSA PRIVATE KEY-----
    ##########################
    ### key deleted ###
    [mkuwamura@xxxxxx01 ~]$
    
