append_overlay_to_make_conf:
  file.append:
    - name: /etc/portage/make.conf
    - text: PORTDIR_OVERLAY="/vagrant/gentoo-overlay ${PORTDIR_OVERLAY}"

use_bin_package_when_available:
  file.line:
    - name: /etc/portage/make.conf
    - match: ^FEATURES=.*$
    - mode: replace
    - content: FEATURES="${FEATURES} parallel-fetch getbinpkg"
