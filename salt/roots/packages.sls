git:
  pkg:
    {% if grains['os'] == 'Gentoo' %}
    - name: dev-vcs/git
    {% else %}
    -name: git
    {% endif %}
    - installed
