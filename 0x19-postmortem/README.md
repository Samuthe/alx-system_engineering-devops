Postmortem analysis

5th, Dec 2022

From the Technical department,

We apologize to our esteemed clients for the breakdown of our system API and the late response to their requests. Our system engineers were tirelessly working to fix the issue on time

1. Issue summary
500 error status code persisted from 10.00 pm to 12 midnight affecting 75% of traffic to our API infrastructure.
Our Clients struggled too much to access the web server resources because traffic was too high to access on only one server, as the other servers were off the peak.

2. Root Cause
At 9.15 pm, the busy integrated servers needed to be configured to a rollback IP address to automatically schedule jobs to both servers.
The extra server which is integrated as one to share resources was down, resulting in an over-work outage to the other server that couldn't withstand the many requests from clients' traffic.

3. Timeline
a) 9.15 pm: configuration push reworked
b) 10.00 pm - 11.15 pm: Data traffic bundling outways the system
c) 11.15 pm - 11.30 pm: Pagers alert the on-call team member
d) 11.30 pm - 11.40 pm: On-call member forwards the issue to the entire team
11.40 pm - 11.55 pm: The team tackles and successfully configures the issue
11.55 pm - 12midnight: Servers restart and 100% of traffic is restored, back online

4. Resolutions and Recovery
At 10.00 pm, the configured monitoring systems alerted the engineers on duty who worked and investigated the architect and quickly escalated the issue by 11.55 pm.

5. Corrective and Preventive Measures
After the incident took place, we encountered some corrective and preventive measures we addressed in case of the same problem.
a)Implement automation rollback on all added servers to the Nginx system docker.
b)Add pager system monitoring automation on all concerned team parties dealing with the project
c)Improve the process for auditing all high-risk configuration options
d)Develop a better mechanism for quickly delivering status notifications during incidents like this
e)Fix the underlying authentication library files and monitor to correctly timeout/interrupt errors

Diagramatic representation of the issue:

https://docs.google.com/document/d/1JXEI_-gpSdqmEfmghsRz_Q3PCdTT7lwSWMAS-2vEY6Q/edit?usp=sharing


sincerely,
Samuel Ekati,
DevOps department.
