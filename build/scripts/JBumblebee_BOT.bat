@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  JBumblebee_BOT startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and J_BUMBLEBEE_BOT_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\JBumblebee_BOT.jar;%APP_HOME%\lib\guava-23.0.jar;%APP_HOME%\lib\discord4j-core-3.2.2.jar;%APP_HOME%\lib\jsr305-1.3.9.jar;%APP_HOME%\lib\discord4j-rest-3.2.2.jar;%APP_HOME%\lib\discord4j-gateway-3.2.2.jar;%APP_HOME%\lib\discord4j-voice-3.2.2.jar;%APP_HOME%\lib\discord4j-common-3.2.2.jar;%APP_HOME%\lib\caffeine-2.8.8.jar;%APP_HOME%\lib\error_prone_annotations-2.4.0.jar;%APP_HOME%\lib\j2objc-annotations-1.1.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.14.jar;%APP_HOME%\lib\discord-json-1.6.12.jar;%APP_HOME%\lib\stores-jdk-3.2.1.jar;%APP_HOME%\lib\discord-json-api-1.6.12.jar;%APP_HOME%\lib\stores-api-3.2.1.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.12.6.jar;%APP_HOME%\lib\jackson-databind-2.12.6.jar;%APP_HOME%\lib\reactor-extra-3.4.6.jar;%APP_HOME%\lib\simple-fsm-1.0.1.jar;%APP_HOME%\lib\jackson-annotations-2.12.6.jar;%APP_HOME%\lib\jackson-core-2.12.6.jar;%APP_HOME%\lib\reactor-netty-http-1.0.16.jar;%APP_HOME%\lib\reactor-netty-core-1.0.16.jar;%APP_HOME%\lib\reactor-core-3.4.15.jar;%APP_HOME%\lib\Servicer-1.0.3.jar;%APP_HOME%\lib\netty-codec-http2-4.1.74.Final.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.74.Final.jar;%APP_HOME%\lib\netty-codec-http-4.1.74.Final.jar;%APP_HOME%\lib\netty-resolver-dns-native-macos-4.1.74.Final-osx-x86_64.jar;%APP_HOME%\lib\netty-resolver-dns-classes-macos-4.1.74.Final.jar;%APP_HOME%\lib\netty-resolver-dns-4.1.74.Final.jar;%APP_HOME%\lib\netty-transport-native-epoll-4.1.74.Final-linux-x86_64.jar;%APP_HOME%\lib\checker-qual-3.8.0.jar;%APP_HOME%\lib\netty-handler-4.1.74.Final.jar;%APP_HOME%\lib\netty-codec-dns-4.1.74.Final.jar;%APP_HOME%\lib\netty-codec-socks-4.1.74.Final.jar;%APP_HOME%\lib\netty-codec-4.1.74.Final.jar;%APP_HOME%\lib\netty-transport-classes-epoll-4.1.74.Final.jar;%APP_HOME%\lib\netty-transport-native-unix-common-4.1.74.Final.jar;%APP_HOME%\lib\netty-transport-4.1.74.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.74.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.74.Final.jar;%APP_HOME%\lib\netty-common-4.1.74.Final.jar;%APP_HOME%\lib\netty-tcnative-classes-2.0.48.Final.jar;%APP_HOME%\lib\reactive-streams-1.0.3.jar

@rem Execute JBumblebee_BOT
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %J_BUMBLEBEE_BOT_OPTS%  -classpath "%CLASSPATH%" App %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable J_BUMBLEBEE_BOT_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%J_BUMBLEBEE_BOT_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
