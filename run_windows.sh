cd yatube
python -m venv .venv
. .venv/Scripts/activate
cd yatubeeri
pip install -r requirements.txt
python manage.py migrate
python manage.py runserver
