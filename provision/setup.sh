echo 'PORTDIR_OVERLAY="/vagrant/gentoo-overlay ${PORTDIR_OVERLAY}"' >> /etc/portage/make.conf
USE="-cgi -gpg -highlight -mediawiki -mediawiki-experimental -pcre-jit -perforce -ppcsha1 -subversion -tk -webdav" emerge dev-vcs/git
