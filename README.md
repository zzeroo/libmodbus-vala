# libmodbus-vala

These are the vala bindings for the latest libmodbus (3.1.2).

This package is not a fork but heavy inspired by the [bytes modbus-vala][1] project.

## Steps to generate the `.vapi` file

First you have to checkout and install [libmodbus][2]. I prefer compiling from source
but this is up to you.

```
git clone https://github.com/stephane/libmodbus.git
cd libmodbus
./configure --prefix=/usr
make
sudo make install
```

Then you have to checkout this libmodbus-vala repo from github.

```
git clone https://github.com/zzeroo/libmodbus-vala.git
cd libmodbus-vala
```

Finally run these two commands. This should generate the `libmodbus.vapi` in
projects root. **There is a [bug][valabug]. Please read further before proceeding!**

```
vala-gen-introspect libmodbus libmodbus
vapigen --library=libmodbus libmodbus/libmodbus.gi
```

##Notice
Unfortunately there is a problem with the generated `.gi` file. The command
`vala-gen-introspect libmodbus libmodbus` cuts off some function names.
These so generated function names start with `new_` which is an error. Because
of this misnamed functions the second command `vapigen --library=libmodbus libmodbus/libmodbus.gi`
fails with an error like these:

```
libmodbus.gi:0.0-0.0: error: construction methods may only be declared within classes and structs
libmodbus.gi:0.0-0.0: error: construction methods may only be declared within classes and structs
libmodbus.gi:0.0-0.0: error: construction methods may only be declared within classes and structs
```

###Bugfix `vala-gen-introspect`'s cut off
After the first command
```
vala-gen-introspect libmodbus libmodbus
```
you have to replace the function names in the `libmodbus.gi` file
```
sed -i 's/name="new_rtu"/name="modbus_new_rtu"/g' libmodbus/libmodbus.gi
sed -i 's/name="new_tcp"/name="modbus_new_tcp"/g' libmodbus/libmodbus.gi
sed -i 's/name="new_tcp_pi"/name="modbus_new_tcp_pi"/g' libmodbus/libmodbus.gi
```
now you can call the last command.
```
vapigen --library=libmodbus libmodbus/libmodbus.gi
```


See [this thread on the vala-list][valabug]

## References

- http://btbytes.github.com/modbus-vala
- http://stackoverflow.com/questions/16779527/parameters-to-use-in-a-vapi-definition-for-passing-arrays-by-reference
- http://live.gnome.org/Vala/Bindings

[1]: http://btbytes.github.com/modbus-vala
[2]: http://libmodbus.org/
[3]: http://live.gnome.org/Vala/Bindings
[valabug]: https://mail.gnome.org/archives/vala-list/2012-March/msg00003.html
