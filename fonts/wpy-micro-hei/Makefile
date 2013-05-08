############################################################
#             WenQuanYi Font Packaging System
#
#  Author: Qianqian Fang <fangq at nmr.mgh.harvard.edu>
#  History:
#      2009/05/26    Initial version for MicroHei
############################################################

PKGNAME=wqy-microhei
VERSION=0.2.0_NB

deb:
	-wqypkg/wqydebmkdir.sh $(PKGNAME)
	-wqypkg/wqydebcopy.sh  $(PKGNAME) $(VERSION)
	-dpkg -b debian $(PKGNAME)-$(VERSION).deb
rpm:
	-wqypkg/wqyrpmmkdir.sh $(PKGNAME)
	-wqypkg/wqyrpmcopy.sh  $(PKGNAME) $(VERSION)
	cd rpmroot && tar zcvf $(PKGNAME)-$(VERSION).tar.gz $(PKGNAME)-fonts ; \
	rpmbuild --define="_topdir rpmroot/rpm" -ta $(PKGNAME)-$(VERSION).tar.gz
clean:
	-rm -rf debian rpmroot pkg.info $(PKGNAME)-$(VERSION).deb $(PKGNAME)-$(VERSION)*.rpm
