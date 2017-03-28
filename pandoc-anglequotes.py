#!/usr/bin/env python
# coding: utf-8

from __future__ import unicode_literals

from pandocfilters import toJSONFilter, Str


def process(key, value, format, meta, Str=Str):
    if key == "Str":
        return Str(value.replace("<<", '«').replace(">>", '»'))


if __name__ == "__main__":
    toJSONFilter(process)
