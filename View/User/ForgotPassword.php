<div style="width: 500px;margin: 0 auto; margin-top: 20px;border: 5px double;border-radius: 10px;">
<center><h2><a style="font-weight: bold; font-size: 28px;margin-top: 30px;color:rgba(0,206,209)" href="index.php?mod=user&act=login">Khôi phục mật khẩu</a></h2></center>
<p>
    <script language="javascript" src="js/function1.js"></script>
<form action="index.php?mod=user&act=forgotpassword" method="post" class="form" onSubmit="return IsForgotPass()">
    <p style="margin-left: 88px"><label>Tên đăng nhập</label><input type="text" name="txtUserName" id="txtUserName" style="margin-left:18px;"/></p>
    <p style="margin-left: 88px"><label>Email khôi phục</label><input type="text" name="txtEmail" id="txtEmail" style="margin-left:10px;"/></p>
    <p><label>&nbsp;</label><input type="submit" name="btnChange" id="btnChange" value="Đổi mật khẩu" style="margin-left:168px;font-weight: bold;background-color: rgba(0,206,209)"/></p>
    <p id="error" class="error"></p>
</form>
</p>
</div>
