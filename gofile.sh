FILE="@$1"
SERVER=$(curl -s https://api.gofile.io/servers | jq  -r '.data|.servers|.[0].name')
UP=$(curl -F file=${FILE} https://${SERVER}.gofile.io/uploadFile)
LINK=$(echo $UP | jq -r '.data|.downloadPage')
echo $LINK
