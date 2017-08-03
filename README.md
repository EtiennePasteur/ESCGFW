# ESCGFW
This is how to pass through the Great Firewall of China

### Pull ESCGFW image from Docker Hub
`docker pull etiennepasteur/escgfw`
### Launch ESCGW container
`docker run -e PASSWORD_SS=xxxx -e PASSWORD_KCP=xxxx -p 8591:8591/udp -p 8590:8590 etiennepasteur/escgfw`
