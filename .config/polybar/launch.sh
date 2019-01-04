#!/bin/bash

#ensure no other instances of polybar are running
pkill polybar

#launch polybar
polybar base &

echo "polybar launched"

