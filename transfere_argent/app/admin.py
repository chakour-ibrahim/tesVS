from django.contrib import admin
from .models import Utilisateur
# Register your models here.

class AdminUtilisateur(admin.ModelAdmin):
    list_display = ('nom_utilisateur','numero_telephone','courriel', 'password', 'operateur','solde',)


admin.site.register(Utilisateur, AdminUtilisateur)
