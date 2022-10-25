mkdir -p C:\Users\admin\Desktop\Backup\main
if [ -d "Backup\main" ]
then
    echo "Folder Exists"
fi

for x in `ls | grep *.java`

do

   javaFileName=`echo $x | awk -F. '{ print $1 }'`

        if [ -d $javaFileName ]

        then

            echo "Folder Exists"

            rm -rf C:\Users\admin\Desktop\Backup\main\$javaFilename

        fi

        mkdir C:\Users\admin\Desktop\Backup\main\$javaFileName

        addFileName=`echo $x | awk -F. '{print $1}'`
        if [ -d $addfilename ]
        then
            echo "Folder Exists"
            rm -rf C:\Users\admin\Desktop\Backup\main\$javaFileName\$addFileName
        fi
        mkdir C:\Users\admin\Desktop\Backup\main\$javaFileName\$addFileName
        cp -r $x C:\Users\admin\Desktop\Backup\main\$javaFileName\$addFilename
done
