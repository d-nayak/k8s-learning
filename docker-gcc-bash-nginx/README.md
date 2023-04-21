Docker compose project involving rocky9 base, gcc install, compiling an a.c, and serving a bash-created index.html file over nginx

Frontend: 
- nginx maps host:8000 to itself at :80

Back:
- gcc compilation of a.c
- index creation using bash-tree
- copy-out to nginx container 

- 
