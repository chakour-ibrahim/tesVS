# Create your models here.
# class Utilisateur(AbstractUser):
#     id_utilisateur = models.AutoField(primary_key=True)
#     nom_utilisateur = models.CharField(max_length=100)
#     numero_telephone = models.CharField(max_length=20)
#     courriel = models.EmailField()
#     password = models.CharField(max_length=100)
#     solde = models.DecimalField(max_digits=10, decimal_places=2)
#     operateur = models.CharField(max_length=100, default='OM')

#     def __str__(self):
#         return self.nom_utilisateur


# models.py

from django.contrib.auth.models import AbstractBaseUser, BaseUserManager
from django.db import models

class CustomUserManager(BaseUserManager):
    def create_user(self, numero_telephone, password=None):
        if not numero_telephone:
            raise ValueError('The numero_telephone field must be set')
        
        user = self.model(numero_telephone=numero_telephone)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, numero_telephone, password=None):
        user = self.create_user(numero_telephone, password)
        user.is_admin = True
        user.is_staff = True
        user.save(using=self._db)
        return user

class Utilisateur(AbstractBaseUser):
    numero_telephone = models.CharField(max_length=100, unique=True)
    password = models.CharField(max_length=100, default='chakour') 

    id_utilisateur = models.AutoField(primary_key=True)
    nom_utilisateur = models.CharField(max_length=100)
    courriel = models.EmailField()
    solde = models.DecimalField(max_digits=10, decimal_places=2)
    operateur = models.CharField(max_length=100, default='OM')

    is_active = models.BooleanField(default=True)
    is_admin = models.BooleanField(default=False)
    is_staff = models.BooleanField(default=False)

    objects = CustomUserManager()

    USERNAME_FIELD = 'numero_telephone'

    def __str__(self):
        return f"{self.numero_telephone} {self.password} {self.nom_utilisateur} {self.solde} {self.courriel} {self.operateur}"
    
    def has_perm(self, perm, obj=None):
        return self.is_admin

    def has_module_perms(self, app_label):
        return self.is_admin

class Transaction(models.Model):
    transaction_id = models.AutoField(primary_key=True)
    sender_name = models.CharField(max_length=100, null=True, blank= True)
    receiver_name = models.CharField(max_length=100, null=True, blank= True)
    amount = models.DecimalField(max_digits=10, decimal_places=2)
    timestamp = models.DateTimeField(auto_now_add=True)
    status = models.CharField(max_length=100)
    typetransaction = models.CharField(max_length=100)

    def __str__(self):
        return f"{self.sender_name} {self.receiver_name} {self.amount} {self.timestamp} {self.status} {self.typetransaction}"