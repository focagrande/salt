vim:
    pkg:
        - installed

/etc/vim:
    file.recurse:
        - source: salt://files/vim
        - include_empty: True
        - user: root
        - group: root
        - dir_mode: 0775
        - file_mode: 744
        - require:
            - pkg: vim

