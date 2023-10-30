from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager
from flask_migrate import Migrate

db = SQLAlchemy()
DB_NAME = "database.db"


def create_app():
    app = Flask(__name__, 
                static_url_path='/',
                static_folder='static',
                template_folder='templates',
                )
    app.config['SECRET_KEY'] = '@DoE2D2212!!@dsseSDE'
    app.config['SQLALCHEMY_DATABASE_URI'] = f"mysql+pymysql://root@localhost/test"

    db.init_app(app)
    migrate = Migrate(app, db)
    migrate.init_app(app, db)
    

    from .views import views

    app.register_blueprint(views, url_prefix='/')

    from .models import Rooms
    
    with app.app_context():
        db.create_all()
    return app