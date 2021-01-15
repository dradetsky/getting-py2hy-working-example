getting py2hy working
=====================

it wasn't obvious how to do this & i kept running into errors. i ended up using
docker to try to isolate my system as much as possible, and ended up getting it
to work. suffice to say that the secret sauce is rolling back the latest commit.

since this confused me & could confuse others, i'll publish the dockerfile. it's
basically an attempt to replicate the py2hy travis.yaml file without having to
figure out/remember how how travis works
