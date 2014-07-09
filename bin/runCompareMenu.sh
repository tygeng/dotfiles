#! /bin/sh

    libdir=%INSTALL_PATH/lib

    cd %INSTALL_PATH/lib
 
    %JAVA_HOME/bin/java -jar "${libdir}/runPB.jar" net.sf.RecordEditor.ProtoBuf.CompareProtoLayout

 
