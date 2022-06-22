# streamtunnel
## This program will tunnel to a camera's RTSP stream with a non-root user.

## How to Install Streamtunnel:

### MacOS Instructions:
Step 1: Uncomment line 2.

Step 2: Make sure line 3 is commented out.

Step 3: Change atlas_username to your Atlas username (keep the quotes)

Step 4: As your regular user (not root) run ```st_setup2.sh```


### WSL Ubuntu Instructions:
Step 1: Uncomment line 3.

Step 2: Make sure line 2 is commented out.

Step 3: Change atlas_username to your Atlas username (keep the quotes)

Step 4: As your regular user (not root) run ```st_setup2.sh```


## How to Use Streamtunnel:

As your regular, non-root user, run:

```streamtunnel mi-number ip```

Note that streamtunnel now uses the mi-number for a guardian rather than its FQDN.
