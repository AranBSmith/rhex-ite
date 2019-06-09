import sys
sys.path.insert(0, sys.path[0]+'/waf_tools')

import os
import limbo

def options(opt):
    opt.load('rhex_dart')
    opt.load('dart')
    opt.load('boost')

def configure(conf):
    conf.load('rhex_dart')
    conf.load('dart')
    conf.load('boost')
    # In boost you can use the uselib_store option to change the variable the libs will be loaded
    boost_var = 'BOOST_ITE'
    conf.check_boost(lib='regex system serialization', min_version='1.46', uselib_store=boost_var)

    conf.check_dart()
    conf.check_rhex_dart()

    conf.env.LIB_THREADS = ['pthread']


def build(bld):
    rhex_libs = 'RHEX_CONTROLLER DART EIGEN BOOST_ITE BOOST LIMBO LIBCMAES NLOPT '
    rhex_graphic_libs = 'DART_GRAPHIC ' + rhex_libs

    cxxflags = bld.get_env()['CXXFLAGS']


    if bld.get_env()['BUILD_GRAPHIC'] == True:
      limbo.create_variants(bld,
                            source = 'rhex.cpp',
                            uselib_local = 'limbo',
                            uselib = rhex_graphic_libs,
                            includes=". ../../src ../ ./include",
                            cxxflags = cxxflags,
                            variants = ['GRAPHIC'])

    limbo.create_variants(bld,
                          source = 'rhex.cpp',
                          uselib_local = 'limbo',
                          uselib = rhex_libs,
                          includes=". ../../src ../ ./include",
                          cxxflags = cxxflags,
                          variants = ['SIMU'])

