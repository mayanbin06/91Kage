#!/usr/bin/python
#coding=utf-8
import tornado.httpserver  
import tornado.ioloop  
from tornado.ioloop import PeriodicCallback
import tornado.web  
import tornado.options  
import os.path  
import time
import json
import sys

from tornado.options import define, options  
import DBHelper

db_helper = DBHelper.DBHelper()

class BaseHandler(tornado.web.RequestHandler):
    def get_current_user(self):
        return self.get_secure_cookie("username")

    def get_current_user(self):
        return self.get_secure_cookie("username")

class LoginHandler(BaseHandler):  
    def get(self):  
        self.render('login1.html')  
    def post(self):  
        user_name = self.get_argument("username");
        password = self.get_argument("password");
        if cmp(user_name, "dabaojian")  == 0 and cmp(password, "123456") == 0:
            self.set_secure_cookie("username", self.get_argument("username"), expires_days=None)
            self.redirect("/")  
        else:
            self.redirect('/login')

class WelcomeHandler(BaseHandler):
    @tornado.web.authenticated
    def get(self):
        self.render("main.html", user=self.current_user)

class NoticeHandler(BaseHandler):
    @tornado.web.authenticated
    def get(self):
        self.render("notice.html", user=self.current_user)

class LogoutHandler(BaseHandler):
    def get(self):
        self.clear_cookie("username")
        self.redirect("/")

class AddAgentHandler(BaseHandler):
    @tornado.web.authenticated
    def get(self):
        self.render("AddAgent.html")
    def post(self):
        post_data={}
        for key in self.request.arguments:
            post_data[key] = self.get_arguments(key)
        db_helper.AddAgent(post_data)
        self.write("操作成功")

class QueryAgentHandler(BaseHandler):
    @tornado.web.authenticated
    def get(self):
        self.render("QueryAgent.html")
    def post(self):
        post_data={}
        for key in self.request.arguments:
            # 页数
            if key == 'page': 
                page = self.get_argument(key)
            # 每页个数
            elif key == 'limit':
                limit = self.get_argument(key)
            else:
                post_data[key] = self.get_argument(key)

        result_data = db_helper.QueryAgent(post_data, page, limit)
        self.write(result_data)

if __name__ == "__main__":

    port = sys.argv[1]

    define("port", default=port, help="run on the given port", type=int)

    tornado.options.parse_command_line()
    settings = {
        "template_path": os.path.join(os.path.dirname(__file__), "templates"),
	"static_path": os.path.join(os.path.dirname(__file__), "static"),
        "cookie_secret": "bZJc2sWbQLKos6GkHn/VB9oXwQt8S0R0kRvJ5/xJ89E=",
        "login_url": "/login"
    }
    application = tornado.web.Application([
        (r'/', WelcomeHandler),
        (r'/login', LoginHandler),
        (r'/logout', LogoutHandler),
        (r'/addAgent', AddAgentHandler),
        (r'/queryAgent', QueryAgentHandler),
        (r'/notice', NoticeHandler)
    ],debug= True,**settings)
    http_server = tornado.httpserver.HTTPServer(application)
    http_server.listen(options.port)
    tornado.ioloop.IOLoop.instance().start()
