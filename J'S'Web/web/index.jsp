<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <link type="text/css" rel="stylesheet" href="css/register.css"/>
    <script src="webSQL.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/register.js"></script>
    <style type="text/css">
        body {
            background: url("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1492062158394&di=1f09564941d1862daf61faaa333a13dc&imgtype=0&src=http%3A%2F%2Fpic2.ooopic.com%2F10%2F72%2F80%2F66b1OOOPICff.jpg");
            background-size: cover;
        }
    </style>
    <script language=JavaScript>
        var _t;
        var _h = 0;
        var _m = 1;
        var _s = 0;
        var _v = formatTime(_h + ':' + _m + ':' + _s);
        function doTime() {
            _s--;
            if (_s == -1) {
                _m--;
                _s = 59;
            }
            if (_m == -1) {
                _h--;
                _m = 59;
            }
            var _b = ((_h == 0) && (_m == 0) && (_s == 0));
            if (_b) {
                clearTimeout(_t);
                alert("Sorry! Time out");
                _m = 1;

            }
            else {
                _v = formatTime(_h + ':' + _m + ':' + _s);
                _t = setTimeout('doTime()', 1000);
            }
            document.all.oTime.innerHTML = _v;
        }
        function formatTime(_time) {
            return _time.replace(/\b(\w)\b/g, '0$1');
        }
        function start_time() {
            _h = 0;
            _m = 1;
            _s = 1;
            document.all.oTime.innerHTML = _v;
            _t = setTimeout('doTime()', 1000);
            var inputs = document.getElementsByTagName("input");
            for (var i = 0; i < inputs.length; i++) {
                if (inputs[i].type == "radio")
                    inputs[i].disabled = "";
                if (inputs[i].type == "checkbox")
                    inputs[i].disabled = "";
            }
        }
        function save() {
            var email = document.getElementById("email").value;
            var grade = document.getElementById("grade").value;
            document.writeln(grade);
            localStorage.setItem(email, grade);

        }
        function find() {
            var find_grade = document.getElementById("find_grade").value;
            var name = localStorage.getItem(find_grade);
            var find_result = document.getElementById("find_result");
            find_result.innerHTML = find_grade + "的成绩是：" + name;
        }
        function validate_email(field, alerttxt) {
            with (field) {
                apos = value.indexOf("@")
                dotpos = value.lastIndexOf(".")
                if (apos < 1 || dotpos - apos < 2) {
                    alert(alerttxt);
                    return false
                }
                else {
                    return true
                }
            }
        }
        function processForm(form) {
            var xf = xf1 = 0;
            var xf1;
            hc = new Array(5);
            var roll_call = hc.length;
            for (i = roll_call; i > 0; i--) {
                hc[i - 1] = 0;
            }
            if (form.c1[1].checked == 1) hc[0] = 20;
            if (form.c1[2].checked == 1) hc[0] = 30;
            if (form.c1[3].checked == 1) hc[0] = 40;

            if (form.c2[1].checked == 1) hc[1] = 20;
            if (form.c2[2].checked == 1) hc[1] = 30;
            if (form.c2[3].checked == 1) hc[1] = 40;

            if (form.c3[1].checked == 1) hc[2] = 20;
            if (form.c3[2].checked == 1) hc[2] = 30;
            if (form.c3[3].checked == 1) hc[2] = 40;

            if (form.c4[1].checked == 1) hc[3] = 20;
            if (form.c4[2].checked == 1) hc[3] = 30;
            if (form.c4[3].checked == 1) hc[3] = 40;


            for (var i = roll_call - 1; i > 0; i--) {
                xf += hc[i - 1]
            }

            if (form.c5[0].checked == 1) {
                hc[4] = 40;
                xf += hc[4];
            }
            if (form.c5[1].checked == 1) {
                xf += hc[4];
                hc[4] = 30;
            }
            if (form.c5[2].checked == 1) {
                xf += hc[4];
                hc[4] = 20;
            }


            xf1 = Math.ceil(xf * 0.5);
            form.grade.value = xf1;
            clearTimeout(_t);
        }
        function validate_form(thisform) {
            save();
            with (thisform) {
                if (validate_email(email, "Not a valid e-mail address!") == false) {
                    email.focus();
                    //    return false
                }
            }
        }

    </script>


</head>

<body>
<h3 style="FONT-FAMILY: 宋体" ; color=#0000ff ; align=center> ◇◆◇◆◇你有焦虑情绪吗？◇◆◇◆◇</h3>
<h4 style="FONT-FAMILY: 宋体" ; color=#0000ff ; align=center>仔细阅读每一题，然后根据你最近一个星期的实际感觉，选择适合的答案。</h4>
<p style="FONT-FAMILY: 宋体; FONT-SIZE: 9pt; LINE-HEIGHT: 15px" ; color=#ff0000 ; align="center">
    说明:你焦虑评定的分界值是30分，分值越高，焦虑倾向越明显。</p> <br>

<FORM name=see>
    <DIV align=center>
        <span id='oTime'></span>
        <input align="middle" type="button" name="button2" value="计时开始" onclick='start_time()'>
        <TABLE border=0 cellPadding=10 cellSpacing=0 height=388 width=517>
            <TBODY>
            <TR>
                <TD height=1 width=517>
                    <SPAN style="FONT-FAMILY: 宋体; FONT-SIZE: 9pt; LINE-HEIGHT: 15px">1.你经常对现在的生活反思吗？<BR>
                        <INPUT name=c1 type=radio value=1 disabled="disabled">没有或很少时间。
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <INPUT name=c1 type=radio value=3 disabled="disabled">小部分时间。<BR>
                        <INPUT name=c1 type=radio value=5 disabled="disabled">相当多时间。
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <INPUT name=c1 type=radio value=7 disabled="disabled">绝大部分或全部时间。
                    </SPAN>
                </TD>
            </TR>
            <TR>
                <TD height=1 width=517>
                    <SPAN style="FONT-FAMILY: 宋体; FONT-SIZE: 9pt; LINE-HEIGHT: 15px">2、你会无缘无故感到害怕吗？<BR>
                        <INPUT name=c2 type=radio value=11 disabled="disabled">没有或很少时间。
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <INPUT name=c2 type=radio value=31 disabled="disabled">小部分时间。<BR>
                        <INPUT name=c2 type=radio value=51 disabled="disabled">相当多时间。
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <INPUT name=c2 type=radio value=71 disabled="disabled">绝大部分或全部时间。
                    </SPAN>
                </TD>
            </TR>
            <TR>
                <TD height=1 width=517>
                    <SPAN style="FONT-FAMILY: 宋体; FONT-SIZE: 9pt; LINE-HEIGHT: 15px">3、你经常容易心里烦乱或觉得惊慌吗？<BR>
                        <INPUT name=c3 type=radio value=12 disabled="disabled">没有或很少时间。
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <INPUT name=c3 type=radio value=32 disabled="disabled">小部分时间。<BR>
                        <INPUT name=c3 type=radio value=52 disabled="disabled">相当多时间。
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <INPUT name=c3 type=radio value=72 disabled="disabled">绝大部分或全部时间。
                    </SPAN>
                </TD>
            </TR>
            <TR>
                <TD height=35 width=517>
                    <SPAN style="FONT-FAMILY: 宋体; FONT-SIZE: 9pt; LINE-HEIGHT: 15px">4、你会觉得现在的生活已经满足了吗？<BR>
                        <INPUT name=c4 type=radio value=13 disabled="disabled">没有或很少时间。
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <INPUT name=c4 type=radio value=33 disabled="disabled">小部分时间。<BR>
                        <INPUT name=c4 type=radio value=53 disabled="disabled">相当多时间。
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <INPUT name=c4 type=radio value=73 disabled="disabled">绝大部分或全部时间。
                    </SPAN>
                </TD>
            </TR>
            <TR>
                <TD height=35 width=517>
                    <SPAN style="FONT-FAMILY: 宋体; FONT-SIZE: 9pt; LINE-HEIGHT: 15px">5.你会在空闲的时候做什么？<BR>
                        <INPUT name=c5 type="checkbox" value=14 disabled="disabled">没有或很少时间。
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <INPUT name=c5 type="checkbox" value=34 disabled="disabled">小部分时间。<BR>
                        <INPUT name=c5 type="checkbox" value=54 disabled="disabled">相当多时间。
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <INPUT name=c5 type="checkbox" value=74 disabled="disabled">绝大部分或全部时间。
                    </SPAN>
                </TD>
            </TR>
            <TR>
                <TD align=middle height=25 width=517>
                    <SPAN style="FONT-FAMILY: 宋体; FONT-SIZE: 9pt; LINE-HEIGHT: 15px">
                    <INPUT onclick=processForm(this.form) style="FONT-FAMILY: 宋体; FONT-SIZE: 9pt"
                           type=button value=查看成绩>
                    <INPUT type="text" id="grade" name="grade"
                           style="COLOR: rgb(255,0,0); FONT-FAMILY: 宋体; FONT-SIZE: 9pt">
                </SPAN>
                </TD>
            </TR>
            </TBODY>
        </TABLE>
    </DIV>
</FORM>

<DIV align=center>
    <form onsubmit="return validate_form(this);" method="post">
        Email: <input type="text" id="email" name="email" size="30">
        <input type="submit" value="Submit">
    </form>

    <br>
    <label for="find_grade">输入电子邮箱：</label>
    <input type="text" id="find_grade" name="find_grade"/>
    <input type="button" onclick="find()" value="查询成绩"/>
    <p id="find_result"><br/></p>

</DIV>

</body>
</html>