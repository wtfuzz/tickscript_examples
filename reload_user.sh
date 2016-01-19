#!/bin/sh

kapacitor define -name user -tick user.tick -type stream -dbrp user.default
kapacitor reload user
