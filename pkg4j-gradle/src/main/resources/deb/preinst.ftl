#!/bin/sh -e

ec() {
    echo "\$@" >&2
    "\$@"
}

case "\$1" in
    install)
        <% preinstCommands.each {command -> %>
        ec <%= command %>
        <% } %>
        ;;
esac
