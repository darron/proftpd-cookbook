# encoding: utf-8
name             'proftpd'
maintainer       'Darron Froese'
maintainer_email 'darron@froese.org'
license          'Apache 2.0'
description      'Installs/configures ProFTPD'
version          '0.1.0'
recipe           'proftpd::default', 'Installs/configures ProFTPD'

depends 'apt'
