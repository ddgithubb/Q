cd sync-server
$Env:GOOS = "linux"
go build
cd ..
ssh -i POOL_NET_SYNC_SERVER_KEY_PAIR.pem ec2-user@ec2-99-79-191-205.ca-central-1.compute.amazonaws.com -t "killall screen"
scp -i POOL_NET_SYNC_SERVER_KEY_PAIR.pem sync-server/sync-server ec2-user@ec2-99-79-191-205.ca-central-1.compute.amazonaws.com:/home/ec2-user
ssh -i POOL_NET_SYNC_SERVER_KEY_PAIR.pem ec2-user@ec2-99-79-191-205.ca-central-1.compute.amazonaws.com -t "screen -d -m sudo ./sync-server; screen -ls"