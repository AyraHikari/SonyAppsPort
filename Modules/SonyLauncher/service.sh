#!/bin/sh

sleep 15

PKG=com.sonymobile.launcher
UID=$(pm list packages -U | grep $PKG | sed -n -e "s/package:$PKG uid://p")

pm grant $PKG android.permission.CAMERA
pm grant $PKG android.permission.GET_ACCOUNTS
pm grant $PKG android.permission.READ_CONTACTS
pm grant $PKG android.permission.READ_EXTERNAL_STORAGE
pm grant $PKG android.permission.READ_SMS
pm grant $PKG android.permission.CALL_PHONE

appops set --uid $UID LEGACY_STORAGE allow
appops set $PKG FINE_LOCATION allow
appops set $PKG WRITE_CONTACTS allow
appops set $PKG READ_CALL_LOG allow
appops set $PKG WRITE_CALL_LOG allow
appops set $PKG RECEIVE_SMS allow
appops set $PKG SEND_SMS allow
appops set $PKG CAMERA allow
appops set $PKG PROCESS_OUTGOING_CALLS allow
appops set $PKG READ_CELL_BROADCASTS allow
appops set $PKG WRITE_EXTERNAL_STORAGE allow
appops set $PKG LEGACY_STORAGE allow
appops set $PKG ACCESS_MEDIA_LOCATION allow
appops set $PKG WAKE_LOCK allow
