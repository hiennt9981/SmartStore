<div style="width: 500px;margin: 0 auto; margin-top: 20px;border: solid; border-color: #6495ED; border-radius: 10px;"><center>
	<h2><span><a style="color: rgba(0,206,209);font-weight: bold;font-size: 25px; margin-top: 50px" href="index.php?mod=user&act=register">Đăng ký tài khoản</a></span></h2>
  	<p>
    <script language="javascript" src="js/function1.js"></script>
  	<form class="form" method="post" action="index.php?mod=user&act=register" onsubmit="return IsRegister()">
        <p><label>Họ tên (*)</label><input type="text" name="txtFullName" id="txtFullName" size="30" style="margin-left: 28px;"/></p>
        <p><label>Tên đăng nhập (*)</label><input type="text" name="txtUserName" id="txtUserName" style="margin-left: 40px;"/></p>
        <p><label>Mật khẩu (*)</label><input type="password" name="txtPassWord" id="txtPassWord" style="margin-left: 78px;"/></p>
        <p><label>Mật khẩu xác nhận (*)</label><input type="password" name="txtPrePass" id="txtPrePass" style="margin-left: 16px;" /></p>
        <p><label>Email (*)</label><input type="email" name="txtEmail" id="txtEmail" size="30" style="margin-left: 33px;"/></p>
        <p><label>&nbsp;</label><input type="submit" value="Đăng ký" name="btnRegister" id="btnRegister" style="font-weight:bold;background-color:  rgba(0,206,209)"/></p>
        <p id="error" class="error" style="color: rgb(255,0,0)"></p>
    </form>
  </p>
	</form>
</center></div>

