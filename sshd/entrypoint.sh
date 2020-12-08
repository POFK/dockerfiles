autossh -M 7200 -4 -fCNL *:8000:localhost:5664 nova 
autossh -M 7210 -4 -fCNL *:8001:gnova:31380 nova 
#autossh -M 7220 -4 -fCNL *:8002:gnova:22 nova

exec $@
