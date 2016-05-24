import os

dirct = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

CONFIG = {
    'mode': 'wsgi',
    'working_dir': dirct + '/ask',
    # 'python': '/usr/bin/python',
    'args': (
        '--bind=0.0.0.0:8000',
        # '--daemon'
        '--workers=2',
        '--timeout=60',
        'ask.wsgi:application',
    ),
}
