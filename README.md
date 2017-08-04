# ESCGFW
This is how to pass through the Great Firewall of China

### Pull ESCGFW image from Docker Hub
`docker pull etiennepasteur/escgfw`
### Launch ESCGFW container
`docker run -d -e PASSWORD_SS=xx -e PASSWORD_KCP=xx -p 8591:8591/udp -p 8590:8590 etiennepasteur/escgfw`
