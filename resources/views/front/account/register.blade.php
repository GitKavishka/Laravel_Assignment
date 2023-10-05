@extends('front.layouts.app')

@section('content')
<main>
    <section class="section-5 pt-3 pb-3 mb-3 bg-white">
        <div class="container">
            <div class="light-font">
                <ol class="breadcrumb primary-color mb-0">
                    <li class="breadcrumb-item"><a class="white-text" href="#">Home</a></li>
                    <li class="breadcrumb-item">Register</li>
                </ol>
            </div>
        </div>
    </section>

    <section class="section-10">
        <div class="container">
            <div class="login-form">    
                <form action="{{ route('front.account.processRegister') }}" method="post" name="registrationForm" id="registrationForm">
				@csrf
                    <h4 class="modal-title">Register Now</h4>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Name" id="name" name="name">
                        <p></p>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Email" id="email" name="email">
                        <p></p>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Phone" id="phone" name="phone">
                        <p></p>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Password" id="password" name="password">
                        <p></p>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Confirm Password" id="cpassword" name="cpassword">
                        <p></p>
                    </div>
                    <div class="form-group small">
                        <a href="#" class="forgot-link">Forgot Password?</a>
                    </div> 
                    <button type="submit" class="btn btn-dark btn-block btn-lg" value="Register">Register</button>
                </form>			
                <div class="text-center small">Already have an account? <a href="{{ route('front.account.login') }}">Login Now</a></div>
            </div>
        </div>
    </section>
</main>
@endsection

@section('customJs')
<script>
$(document).ready(function () {
    $("#registrationForm").submit(function (event) {
        event.preventDefault();
        var form = $(this);
        var submitButton = form.find("button[type='submit']");
        submitButton.prop('disabled', true);

        $.ajax({
            url: '{{ route("front.account.processRegister") }}',
            type: 'post',
            data: form.serializeArray(),
            dataType: 'json',
            success: function (response) {
                submitButton.prop('disabled', false);

                if (response.status === false) {
                    var errors = response.errors;
                    $(".invalid-feedback").html('').removeClass('invalid-feedback');
                    $(".is-invalid").removeClass('is-invalid');

                    if (errors.name) {
                        $("#name").siblings("p").addClass('invalid-feedback').html(errors.name[0]);
                        $("#name").addClass('is-invalid');
                    }

                    if (errors.email) {
                        $("#email").siblings("p").addClass('invalid-feedback').html(errors.email[0]);
                        $("#email").addClass('is-invalid');
                    }

                    if (errors.password) {
                        $("#password").siblings("p").addClass('invalid-feedback').html(errors.password[0]);
                        $("#password").addClass('is-invalid');
                    }
                } else {
                    $(".invalid-feedback").html('').removeClass('invalid-feedback');
                    $(".is-invalid").removeClass('is-invalid');
                    window.location.href = "{{ route('front.account.login') }}";
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("Something went wrong");
            }
        });
    });
});
</script>
@endsection
