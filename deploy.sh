# new deploy
echo "Rsync files"
rsync -av --progress --exclude='.git' --rsh='ssh -p 987' \
	--exclude='ORIGINAL' --exclude='provisorio-2015' \
	./ dolina@alejandrodolina.com.ar:/home/dolina/www/

#permissions
echo "Fix file's permissions"
ssh -p 987 dolina@alejandrodolina.com.ar "find /home/dolina/www/ -type d -exec chmod 755 {} \; && find /home/dolina/www/ -type f -exec chmod 644 {} \;"


# old deploy
#rsync -av --progress --exclude='.git' --rsh='ssh -p 987' \
#	--exclude='ORIG' --exclude='ORIG2' \
#	. dolina@alejandrodolina.com.ar:/home/dolina/www/
 

# update new files
# rsync -av --progress --ignore-existing --exclude='.git' --rsh='ssh -p 987' \
#	--exclude='ORIGINAL' --exclude='provisorio-2015' \
#	./ dolina@alejandrodolina.com.ar:/home/dolina/www/


