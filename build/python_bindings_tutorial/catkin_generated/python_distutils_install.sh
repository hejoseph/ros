#!/bin/sh -x

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

cd "/home/joseph/workspace_catkin/src/python_bindings_tutorial"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
/usr/bin/env \
    PYTHONPATH="/home/joseph/workspace_catkin/install/lib/python2.7/dist-packages:/home/joseph/workspace_catkin/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/joseph/workspace_catkin/build" \
    "/usr/bin/python" \
    "/home/joseph/workspace_catkin/src/python_bindings_tutorial/setup.py" \
    build --build-base "/home/joseph/workspace_catkin/build/python_bindings_tutorial" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/joseph/workspace_catkin/install" --install-scripts="/home/joseph/workspace_catkin/install/bin"
