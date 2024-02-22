<!doctype html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <title>CONFIRMATION</title>
    <style>
        body {
            font-size: 14px;
            font-family: 'Arial', sans-serif;
            color: #333;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #318ba2;
            text-align: center;
        }

        .access-info {
            background-color: #e8f4f8; /* Couleur d'arrière-plan légère pour la section */
            padding: 20px;
            margin-top: 30px;
            border-radius: 5px;
        }

        .access-info h2 {
            color: #267387;
            font-size: 16px;
            margin-top: 0;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #318ba2;
            color: #ffffff;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
        }

        .button:hover {
            background-color: #267387;
        }

        .footer {
            text-align: center;
            margin-top: 30px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>CONFIRMATION</h1>
        <p>Bienvenue sur notre plateforme Mecafix.</p>
        <p>Pour valider votre inscription, cliquez sur le bouton suivant :</p>
        <div class="footer">
            <a class="button" href="<?php echo env('FRONT_APP_URL'); ?>app/<?php echo e($token); ?>-confirm-account">Confirmer</a>
        </div>

        <!-- Nouvelle section avec arrière-plan et titre -->
        <div class="access-info">
            <h2>Accès à votre compte client</h2>
            <p>Après la confirmation de votre compte, pour accéder à votre espace client, utilisez l'adresse email suivante : <strong><?php echo e($clientEmail); ?></strong></p>
            <p>Utilisez le même mot de passe que celui de votre compte administrateur.</p>
        </div>
    </div>
</body>

</html>
<?php /**PATH C:\Users\21653\Documents\GitHub\Mecafix-V1\mecafix-BO\resources\views/confirmAccount.blade.php ENDPATH**/ ?>