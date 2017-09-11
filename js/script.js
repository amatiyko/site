$(document).ready(function ()
{
    $('#submit').click(function ()
    {
        var fname = document.getElementById('firstname').value;
        var lname = document.getElementById('lastname').value;
        var mail = document.getElementById('email').value;
        var msg = document.getElementById('message').value;

        reg = /[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/;

        var alertColor = '#ff3538';

        if (fname == '') {
            document.getElementById('firstname').style.boxShadow = `0 0 10px ${alertColor}`;
            document.getElementById('firstname').setAttribute('placeholder', '');
            document.getElementById('tooltip-firstname').classList.add('tooltip-appear');
        } else {
            document.getElementById('firstname').style.boxShadow = `none`;
            document.getElementById('tooltip-firstname').classList.remove('tooltip-appear');
        }
        if (lname == '') {
            document.getElementById('lastname').style.boxShadow = `0 0 10px ${alertColor}`;
            document.getElementById('lastname').setAttribute('placeholder', '');
            document.getElementById('tooltip-lastname').classList.add('tooltip-appear');
        } else {
            document.getElementById('lastname').style.boxShadow = `none`;
            document.getElementById('tooltip-lastname').classList.remove('tooltip-appear');
        }
        if (mail == '') {
            document.getElementById('email').style.boxShadow = `0 0 10px ${alertColor}`;
            document.getElementById('email').setAttribute('placeholder', '');
            document.getElementById('tooltip-email').classList.add('tooltip-appear');
        } else {
            document.getElementById('email').style.boxShadow = `none`;
            document.getElementById('tooltip-email').classList.remove('tooltip-appear');
        }
        if (msg == '') {
            document.getElementById('message').style.boxShadow = `0 0 10px ${alertColor}`;
            document.getElementById('message').setAttribute('placeholder', '');
            document.getElementById('tooltip-message').classList.add('tooltip-appear');
        } else {
            document.getElementById('message').style.boxShadow = `none`;
            document.getElementById('tooltip-message').classList.remove('tooltip-appear');
        }


        if (mail !== '' && fname !== '' && lname !== '' && msg !== '') {
            if (mail.match(reg)) {
                $.post("message.php", {firstname: fname, lastname: lname, email: mail, message: msg, jspost: true}, function () {
                    document.getElementById('modal').classList.add('modal-appear');
                    document.getElementById('tooltip-email-valid').classList.remove('tooltip-appear');
                });
            } else {
                document.getElementById('email').style.boxShadow = `0 0 10px ${alertColor}`;
                document.getElementById('tooltip-email-valid').classList.add('tooltip-appear');
                //document.getElementById('email').value = "";
            }
        }
        document.getElementById('modal').classList.remove('modal-appear');
    });

    $('.count').each(function () {
        $(this).prop('Counter',0).animate({
            Counter: $(this).text()
        }, {
            duration: 4000,
            easing: 'swing',
            step: function (now) {
                $(this).text(Math.ceil(now));
            }
        });
    });

});
