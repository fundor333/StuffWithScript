#!/bin/sh

echo Content-type: text/plain
echo

echo CGI/1.0 test script report:
echo

echo argc is $#. argv is "$*".
echo

echo SERVER_SOFTWARE = $SERVER_SOFTWARE
echo SERVER_NAME = $SERVER_NAME
echo GATEWAY_INTERFACE = $GATEWAY_INTERFACE
echo SERVER_PROTOCOL = $SERVER_PROTOCOL
echo SERVER_PORT = $SERVER_PORT
echo REQUEST_METHOD = $REQUEST_METHOD
echo HTTP_ACCEPT = "$HTTP_ACCEPT"
echo PATH_INFO = $PATH_INFO
echo PATH_TRANSLATED = $PATH_TRANSLATED
echo SCRIPT_NAME = $SCRIPT_NAME
echo QUERY_STRING = $QUERY_STRING
echo REMOTE_HOST = $REMOTE_HOST
echo REMOTE_ADDR = $REMOTE_ADDR
echo REMOTE_USER = $REMOTE_USER
echo CONTENT_TYPE = $CONTENT_TYPE
echo CONTENT_LENGTH = $CONTENT_LENGTH
echo HTTP_FROM = $HTTP_FROM
echo HTTP_IF_MODIFIED_SINCE = $HTTP_IF_MODIFIED_SINCE
echo HTTP_REFERER = $HTTP_REFERER
echo HTTP_USER_AGENT = $HTTP_USER_AGENT
echo

echo "Added by Frederic TYNDIUK (FTLS) tyndiuk@ftls.org / http://www.ftls.org"

if [ -e /usr/bin/perl ]
then
	echo Perl Path : /usr/bin/perl
fi

if [ -e /usr/local/bin/perl ]
then
	echo Perl Path : /usr/local/bin/perl
fi