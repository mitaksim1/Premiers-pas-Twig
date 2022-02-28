<div class="bg-img1 size1 flex-w flex-c-m p-t-20 p-b-55 p-l-15 p-r-15">
	<div class="wsize1 bor1 bg1 p-b-45 p-l-15 p-r-15 p-t-20 respon1">
		<div class="wrappic1">
			<img src="assets/logo.png" alt="Logo ALIPTIC">
		</div>
		<p class="txt-center m1-txt1 p-t-33 p-b-68">
			Exercice TWIG
		</p>
        <div class="container row">
            {% for utilisateur in utilisateurs %}
                <div class="card col-4">
                    <img class="card-img-top" src="{{ utilisateur.picture.medium }}" alt="Image de {{ utilisateur.name.first }}" />
                    <div class="card-body">
                        <h5 class="card-title">
                            Bonjour, mon nom est {{ utilisateur.name.first|capitalize }} {{ utilisateur.name.last|upper }}
                        </h5>
                        <p class="card-text">
                            J'habite "{{ utilisateur.location.state|upper }}", dans une ville qui s'appelle "{{ utilisateur.location.city|upper }}"<br><br>
                        </p>
                        <p class="card-text">
                            <small class="text-muted">
                                Mon adresse e-mail est 
                                <a href="mailto: {{ utilisateur.email }}" title="Envoyer un email à {{ utilisateur.name.first|capitalize }}"> {{ utilisateur.email }}</a>, dont le mot de passe est "{{ utilisateur.login.password }}"
                            </small>
                        </p>
                    </div>
                </div>
            {% endfor %}
        </div>
	</div>
</div>