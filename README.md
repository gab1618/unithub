## Unithub

So after I got smoked by the sheer amount of configuration and trial and error I got to do when setting up a http git server, I've decided to create a simpler one with the git protocol and call it a day for now.

So this is a dumb git repo provider using git protocol with no regards for security.

## Building

Just use the command `docker build` to build the image

## Running

Run the container forwarding from port 9418 to 9418. After that, you should be able to clone the repo with: `git clone git://localhost/repo`
