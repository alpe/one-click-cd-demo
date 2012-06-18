#!/usr/bin/env python
import sys
import os
import BaseHTTPServer
from SimpleHTTPServer import SimpleHTTPRequestHandler


HandlerClass = SimpleHTTPRequestHandler
ServerClass  = BaseHTTPServer.HTTPServer

os.chdir( os.path.dirname(sys.argv[0]) + "/../static")

BaseHTTPServer.test(HandlerClass, ServerClass)
