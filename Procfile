web: uwsgi --module app:app --master --die-on-term --http :${PORT:-5000}
dev: FLASK_APP=app.py FLASK_DEBUG=1 flask run
