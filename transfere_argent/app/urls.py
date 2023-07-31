from django.urls import path
from app.views import *
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', index, name='home'),
    path('login/', login, name="login"),
    path('utilisateur', pageutilisateurs, name="pageutilisateur"),
    path('login/utilisateur/', utilisateur, name="utilisateur"),
    path('login/utilisateur/transfert/', transaction, name="transfert"),
    path('login/utilisateur/transfertupdate', transfertupdate, name="transfertupdate"),

] 