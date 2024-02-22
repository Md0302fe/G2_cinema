<%-- 
    Document   : ForgotPassword
    Created on : Feb 20, 2024, 11:09:40 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Forgot Password</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body>
        <div class="forgot-modal">
            <div class="container d-flex flex-column">
                <div class="row align-items-center justify-content-center
                     min-vh-100">
                    <div class="col-12 col-md-8 col-lg-4">
                        <div class="card shadow-sm">
                            <div class="card-body">
                                <div class="forgot-close-btn">
                                    <i class="fa-solid fa-xmark"></i>
                                </div>
                                <div class="mb-4">
                                    <h5>Forgot Password?</h5>
                                    <p class="mb-2">Enter your registered Email to reset the password
                                    </p>
                                </div>
                                <form>
                                    <div class="mb-3">
                                        <label for="email" class="form-label">Email</label>
                                        <input type="email" id="email" class="form-control" name="email" placeholder="Enter Your Email"
                                               required="">
                                    </div>
                                    <div class="mb-3 d-grid">
                                        <button type="submit" class="btn btn-primary">
                                            Reset Password
                                        </button>
                                    </div>
                                    <span>Don't have an account? <a class="forgot__login--btn" href="HomePage.jsp" style="cursor: pointer">sign in</a></span>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="opt-enter-modal">
            <div class="opt-enter row justify-content-center">
                <div class="col-12 col-md-6 col-lg-4" style="min-width: 500px;">
                    <div class="card bg-white mb-5 mt-5 border-0" style="box-shadow: 0 12px 15px rgba(0, 0, 0, 0.02);">
                        <div class="card-body p-5 text-center">
                            <h4>Verify</h4>
                            <p>Your code was sent to you via email</p>

                            <div class="otp-field mb-4">
                                <input type="number" />
                                <input type="number" disabled />
                                <input type="number" disabled />
                                <input type="number" disabled />
                                <input type="number" disabled />
                                <input type="number" disabled />
                            </div>

                            <button class="forgot-btn btn btn-primary mb-3">
                                Verify
                            </button>

                            <p class="resend text-muted mb-0">
                                Didn't receive code? <a href="">Request again</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>