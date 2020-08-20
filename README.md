# TCP Congestion Control
**ONLY FOR Linux Kernel 4.9 or ABOVE**

**PLEASE USE THIS ONLY IF YOU KNOW WHAT ARE YOU DOING. ELSE PLEASE BE AWARE THAT THIS SCRIPT MAY PHYSICALLY DAMAGE YOUR MACHINE IS USED INCORRECTLY**

Most internet applications use data transmission protocol known as TCP, later using algorithms for the congestion control. A TCP algorithm's main purpose is not to send more data than the network can transmit, which is to prevent a network congestion. While different algorithms do not respond to network loads, they all rely on the same principle to avoid congestion in the network.

Things to heed for in TCP algorithms include :

– Download/Upload speeds – The higher the rate, the better

– Latency – The lower the number, the better


By default, Linux uses the Reno and CUBIC congestion control algorithm but others can be added and used acordig with specific scenarios. This script allows the system administrators to change between congestion controls as fallow:

**If you will like to use this for your personal laptop, please feel free to select BBR over Cubic or RENO**

BBR:
BBR stands for Bottleneck Bandwidth and RTT.TCP BBR is a TCP congestion control algorithm developed by Google. It tackles shortcomings of traditional TCP congestion control algorithms (Reno or CUBIC).It can achieve orders of magnitude higher bandwidth and lower latency.
Reno:
Basically the same as Tahoe, but if 3 of the same packets are received, it will halve the window, instead of reducing it to one. It changes the slow start threshold equal to that of the congestion window.

Vegas:
One of the smoothest TCP algorithms(next to cubic), it increases the timeout delay for packets, which allows more to be received, but at a higher rate. It also has set timeouts, which helps with speed because it’s constantly being refreshed.

Hybla:
Penalizes connections that use satellite radio. Not usually used with phones.

Cubic:
One of the best, most recommended TCP options available. Less aggressive, works according to the event. Used in Linux.

Westwood/Westwood+:
A newer version of Reno, and another commonly used one. It controls parameters better, helping out streaming and overall quality of browsing the internet. One of the most fair algorithms out there, and is one of the most efficient algorithms to date.

Low Priority (LP):
A distributed algorithm whose goal is to utilize only the excess network bandwidth as compared to the “fair share” of bandwidth as targeted by TCP. The key mechanisms unique to TCP-LP congestion control are the use of one-way packet delays for early congestion indications and a TCP-transparent congestion avoidance policy.

Binary Increase Congestion control (BIC):                                                                                         BIC is optimized for high speed networks with high latency: so-called “long fat networks”. It has a unique congestion window (cwnd) algorithm. This algorithm tries to find the maximum where to keep the window at for a long period of time, by using a binary search algorithm.
# How to use
Use git to clone this repository:
```sh
git clone https://github.com/WillyWeiss/tcp_congestion_control.git && cd tcp_congestion_control/ && sudo chmod +x TCP-Congestion-ControlPanel
```
Start the script by simply runing the script and you will input the root password when asked. 

```sh
./TCP-Congestion-ControlPanel
```

