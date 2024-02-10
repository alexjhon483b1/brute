this porject is a brute force project. 
i first selected my target 
then i visited the target with my browser
and at the same time i recorded the traffic between 
my browser and target using tcpdump
then i mimiced the traffic crafting manual
requests.
this code has both curl and C code to send 
get and post request.
this will keep sending payload to target
until the desired outcome.
it will keep sending request and it will
keep showing the response. 
so you have to use 
script output.txt
./check.sh
after that the result will start getting 
captured in output.log
from there you can see manually if it has worked
and should you stop the program.
use grep command to find desired output 
like this 
cat output.log | grep "desired output value"
note: stay careful about content length while using post
