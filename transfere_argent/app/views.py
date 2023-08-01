from django.shortcuts import render, redirect
from django.contrib.auth import authenticate
from django.contrib.auth import login as auth_login
from django.shortcuts import render, get_object_or_404
from .models import *
from decimal import Decimal
# Create your views here.

def index(request):
    transactions = Transaction.objects.all()
    return render(request, 'app/index.html', {'transactions': transactions})

def login(request):
    # Utilisateur.objects.create_user(utilisateur, telephone, password)
    if request.method == 'POST':
        telephone = request.POST['telephone']
        password = request.POST['password']
        utilisateur = authenticate(numero_telephone=telephone, password=password)
        # infoutilisateur = Utilisateur.objects.get(numero_telephone=telephone)
        # print('--- info ---')
        # print('--- info ---')
        # print(utilisateur, telephone, password)
        # print(utilisateur)
        if utilisateur is not None:
            auth_login(request, utilisateur)
            infoutilisateur = get_object_or_404(Utilisateur, numero_telephone=telephone)
            transactions = Transaction.objects.filter(sender_name=infoutilisateur.nom_utilisateur)
            print(infoutilisateur)
            print(transactions)
            return render(request, 'app/utilisateur.html', {'infoutilisateur': infoutilisateur, 'transactions': transactions})
        else:
            error_message = 'Invalid username or password.'
            return render(request, 'app/login.html', {'error_message': error_message})
    else:
        return render(request, 'app/login.html')


def pageutilisateurs(request):
    utilisateurs = Utilisateur.objects.all()

    return render(request, 'app/pageutilisateurs.html', {'utilisateurs': utilisateurs})

def utilisateur(request):
    return render(request, 'app/utilisateur.html')

def transfert(request):
    return render(request, 'app/transfert.html')

def transfertupdate(request, id_transaction):

    transaction = Transaction.objects.get(transaction_id=id_transaction)

    if request.method == 'POST':
        transaction.status = request.POST['typenvoi']
        transaction.save()
              
        return redirect('/')
       
    return render(request, 'app/transfertupdate.html',  {'transaction':transaction} )



def transaction(request, phone_sender):
    utilisateur = Utilisateur.objects.get(numero_telephone=phone_sender)
    if request.method == 'POST':
        numerosender = request.POST['numerosender']
        numeroreciver = request.POST['numeroreciver']
        typenvoi = request.POST['typenvoi']
        montant = Decimal(request.POST['montant'])
        
        sender_user = get_object_or_404(Utilisateur, numero_telephone=numerosender)
        receiver_user = get_object_or_404(Utilisateur, numero_telephone=numeroreciver)
        print(sender_user.solde)
        print(receiver_user.solde)
        if sender_user.solde > montant:
            sender_user.solde -= montant
            sender_user.save()
            
            receiver_user.solde += montant
            receiver_user.save()
            
            transaction = Transaction(sender_name=sender_user.nom_utilisateur, receiver_name=receiver_user.nom_utilisateur, amount=montant, status='Reussie', typetransaction=typenvoi)
        
            # Enregistrez l'utilisateur dans la base de données
            transaction.save()
            
            return redirect('/')
        elif sender_user.solde == montant:
                transaction = Transaction(sender_name=sender_user.nom_utilisateur, receiver_name=receiver_user.nom_utilisateur, amount=montant, status='Encour...', typetransaction=typenvoi)
                transaction.save()
                return redirect('/')
        else:
            transaction = Transaction(sender_name=sender_user.nom_utilisateur, receiver_name=receiver_user.nom_utilisateur, amount=montant, status='Echec...', typetransaction=typenvoi)
            transaction.save()
            return render(request, '/')
    
    return render(request, 'app/transfert.html', {'utilisateur':utilisateur})


def updatetransaction(request):
    if request.method == 'POST':
        numerosender = request.POST['numerosender']
        numeroreciver = request.POST['numeroreciver']
        typenvoi = request.POST['typenvoi']
        montant = Decimal(request.POST['montant'])
        
        sender_user = get_object_or_404(Utilisateur, numero_telephone=numerosender)
        receiver_user = get_object_or_404(Utilisateur, numero_telephone=numeroreciver)
        print(sender_user.solde)
        print(receiver_user.solde)
        if sender_user.solde > montant:
            sender_user.solde -= montant
            sender_user.save()
            
            receiver_user.solde += montant
            receiver_user.save()
            
            transaction = Transaction(sender_name=sender_user.nom_utilisateur, receiver_name=receiver_user.nom_utilisateur, amount=montant, status='Reussie', typetransaction=typenvoi)
        
            # Enregistrez l'utilisateur dans la base de données
            transaction.save()
            
            return redirect('/')
        elif sender_user.solde == montant:
                transaction = Transaction(sender_name=sender_user.nom_utilisateur, receiver_name=receiver_user.nom_utilisateur, amount=montant, status='Encour...', typetransaction=typenvoi)
                transaction.save()
                return redirect('/')
        else:
            transaction = Transaction(sender_name=sender_user.nom_utilisateur, receiver_name=receiver_user.nom_utilisateur, amount=montant, status='Echec...', typetransaction=typenvoi)
            transaction.save()
            return render(request, '/')
    
    return render(request, 'app/transfert.html')
