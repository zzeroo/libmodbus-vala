# libmodbus-vala

This are the vala bindings for the lates libmodbus (3.1.2).

This package is not a fork but heavy inspired by [bytes modbus-vala][1] project.

## Steps to generate the `.vapi` file

First you have to checkout and install libmodbus. I prever compiling from source
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
```


```
vala-gen-introspect libmodbus libmodbus
vapigen --library=libmodbus libmodbus/libmodbus.gi
```

## References

- http://btbytes.github.com/modbus-vala
- https://launchpad.net/libmodbus
- http://live.gnome.org/Vala/Bindings

[1]: (http://btbytes.github.com/modbus-vala)
[2]: (https://launchpad.net/libmodbus)
[3]: (http://live.gnome.org/Vala/Bindings)
