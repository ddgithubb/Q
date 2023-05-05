Test Site: http://pool-net-site-app.s3-website.ca-central-1.amazonaws.com/

## What is it ##
Pool Net is a data distribution application where unlimited data can be distributed across a large pool of devices

## Highlights ##
- Scalable without cost
- Removes cost of data transfer through third party servers
- End to End encrypted

### Description ###

- Welcome to the first test of Pool Net!
- Pool Net uses a custom architecture which provides a strategy/algorithm to connect devices directly
    - The only server involved synchronizes devices within the "pool"
    - The only data being sent to that server is network information which is forwards to other devices
- Both desktop and mobile browsers are supported!
    - Chrome or Microsoft Edge are recommended
- Currently supported data types:
    - Text
    - Files (Max 512mb)
        - Arbitrary cap due to browser limitations (see below for more details)
        - Theoretically UNLIMITED
    - Image

### NOTE ###

- Site is currently in HTTP due to expensive SSL certificates :D
    - No sensitive information is being sent to the server (which is the point)
    - All information exchanged within the app is encrypted
- Will work on 70%-90% of networks/routers
- This is a purely architectural test of the technology, so please take note of the following:
    - Current implementation is in browser:
        - Very convenient for testing and distribution, but...
        - **CAPPED** performance: Getting above 10mb/s will be difficult
        - **NO** direct disk access: No current ability to save messages
        - **UNSUPPORTED** unlimited files: Consequence of no disk access as all data has to be stored in memory
        - **NOT** indicative of actual product, which will be an actual application
    - Everything is STATELESS:
        - Every 'refresh' or 'connect' is equivalent to creating a new user
        - No authentication as of now
    - No support for other media options other than .jpg and .png
- **TLDR**: The idea behind the test is to test the actual logic of data being transferred across 
regular devices, so a lot of the UI/UX features will be missing along with many actual features 
including unlimited file transfers due to browser implementation/security.

### Next Steps ###

- Complete rewrite to turn the product into a desktop application
    - All the above limitations will be gone!
- Open source synchronization servers (so you can host your own pool)
- Passwordless authentication
