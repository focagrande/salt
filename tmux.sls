tmux:
    pkg:
        - installed

/etc/tmux.conf:
    file.managed:
        - source: salt://files/tmux.conf
        - user: root
        - group: root
        - mode: 644
        - require:
            - pkg: tmux
