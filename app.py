from flask import Flask, Response
import feeds

app = Flask(__name__)


@app.route('/notification')
def index():
    feed = feeds.notification_feed()
    return Response(
        feed,
        mimetype='application/xml')
