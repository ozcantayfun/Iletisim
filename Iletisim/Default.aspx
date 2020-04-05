<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Iletisim.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery.form-validator.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            var lang = {
                requiredField: 'Lütfen bu alanı doldurunuz',
                badEmail: 'Lütfen geçerli e-posta adresi giriniz'
            };
            $.validate({ language: lang });


        });
    </script>
    <style type="text/css">
        .bosluk {
            margin-top: 90px;
        }

        .map {
            min-height: 300px;
            min-width: 300px;
        }

        h1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="page-header">
            <div class="clearfix">
                <div class="col-md-12">
                    <h1>Bize Ulaşın</h1>
                </div>
            </div>
        </div>
        <div class="clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="bosluk">
                            <form runat="server">
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Adınız" ID="TxtFirstName" data-validation="required"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Soyadınz" ID="TxtLastName" data-validation="required"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Email Adresiniz" ID="TxtEmail" data-validation="email"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Mesajınız" ID="TxtMessage" TextMode="MultiLine" data-validation="required"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <div class="text-center">
                                        <asp:Button runat="server" CssClass="btn btn-primary btn-lg" Text="Gönder" ID="BtnSend" OnClick="BtnSend_Click"></asp:Button>

                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-default">
                            <h4>
                                <div class="text-center">Adresimiz</div>
                            </h4>
                            <div class="panel-body text-center">
                                <div>
                                    Kızılay Meydanı<br />
                                    Çankaya Mah. 06420
                                    <br />
                                    Merkez/Ankara<br />
                                    +90 312 000 00 00<br />
                                </div>
                                <div class="map" id="map">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3059.94088939308!2d32.853522!3d39.920339000000006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMznCsDU1JzEzLjIiTiAzMsKwNTEnMTIuNyJF!5e0!3m2!1sen!2str!4v1586122786269!5m2!1sen!2str" width="300" height="300" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0" ></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
<%--39.920339, 32.853522--%>