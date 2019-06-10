#! /usr/bin/env python
# encoding: utf-8
# Konstantinos Chatzilygeroudis - 2015

"""
Quick n dirty rhex_dart detection
"""

import os
import rhex_controller
from waflib.Configure import conf


def options(opt):
  opt.load('rhex_controller')
  opt.add_option('--rhex_dart', type='string', help='path to rhex_dart', dest='rhex_dart')

@conf
def check_rhex_dart(conf):
    conf.load('rhex_controller')

    includes_check = ['/usr/local/include', '/usr/include']
    libs_check = ['/usr/local/lib', '/usr/lib']

    # You can customize where you want to check
    # e.g. here we search also in a folder defined by an environmental variable
    if 'RESIBOTS_DIR' in os.environ:
    	includes_check = [os.environ['RESIBOTS_DIR'] + '/include'] + includes_check
    	libs_check = [os.environ['RESIBOTS_DIR'] + '/lib'] + libs_check

    if conf.options.rhex_dart:
    	includes_check = [conf.options.rhex_dart + '/include']
    	libs_check = [conf.options.rhex_dart + '/lib']

    try:
    	conf.start_msg('Checking for rhex_dart includes')
    	res = conf.find_file('rhex_dart/rhex.hpp', includes_check)
    	res = res and conf.find_file('rhex_dart/rhex_control.hpp', includes_check)
    	res = res and conf.find_file('rhex_dart/rhex_dart_simu.hpp', includes_check)
    	res = res and conf.find_file('rhex_dart/descriptors.hpp', includes_check)
    	res = res and conf.find_file('rhex_dart/safety_measures.hpp', includes_check)
        res = res and conf.find_file('rhex_dart/visualizations.hpp', includes_check)
    	conf.end_msg('ok')
    	conf.env.INCLUDES_RHEX_DART = includes_check
    except:
    	conf.fatal('Not found')
    	return
    return 1
