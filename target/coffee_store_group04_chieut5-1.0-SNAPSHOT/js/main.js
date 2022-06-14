var searchToggle = true;
$("#toggleSearch").click(() => {
    searchToggle = !searchToggle;
    searchBarToggle();
});

function searchBarToggle() {
    if (searchToggle) {
        $("form[name='search-bar']").attr("class", "d-flex");
    } else {
        $("form[name='search-bar']").attr("class", "d-none");
    }
}

$("input[name='paymentMethod']").on("input", function () {
    var val = $(this).val();
    $("input[name='pMethod']").val(val);
    if (val !== "online banking") {
        $("#pay-action").attr("disabled", true);
        $("#pay-action").css("opacity", 0.5);
    } else {
        $("#pay-action").removeAttr("disabled");
        $("#pay-action").css("opacity", 1);
    }
})

$("#pay-action").click(() => {
    $("#frmCreateOrder").submit(function () {
        var fullname = $("input[name='fullname']").val();
        var email = $("input[name='email']").val();
        var address = $("input[name='address']").val();
        var phoneNum = $("input[name='phoneNum']").val();

        let customerInformation = {
            fullname: fullname,
            email: email,
            address: address,
            phoneNum: phoneNum
        }
        sessionStorage.setItem('customerInformation', JSON.stringify(customerInformation));

        var postData = $("#frmCreateOrder").serialize();
        var submitUrl = $("#frmCreateOrder").attr("action");
        $.ajax({
            type: "POST",
            url: submitUrl,
            data: postData,
            dataType: 'JSON',
            success: function (x) {
                if (x.code === '00') {
                    if (window.vnpay) {
                        vnpay.open({width: 768, height: 600, url: x.data});
                    } else {
                        location.href = x.data;
                    }
                    return false;
                } else {
                    alert(x.Message);
                }
            }
        });
        return false;
    });
})

$(() => {
    let data = JSON.parse(sessionStorage.getItem("customerInformation"));
    if (data !== null) {
        let fullname = data.fullname;
        let email = data.email;
        let address = data.address;
        let phoneNum = data.phoneNum;
        $("input[name='fullname']").val(fullname);
        $("input[name='email']").val(email);
        $("input[name='address']").val(address);
        $("input[name='phoneNum']").val(phoneNum);
    }
})

function checkEmpty(inp) {
    for (let i of inp) {
        if (i.length < 1) return true;
    }
    return false;
}

function showErrorLabel(elm, content) {
    if ($(elm).parent().children().eq(1).length === 0)
        $(elm).after("<span class=\"text-danger\" style=\"font-size:12px\">" + content + "</span>");
}

function hideErrorLabel(elm) {
    $(elm).parent().children().eq(1).remove();
}

function checkValidData() {
    let fullname = $("input[name='fullname']").val();
    let email = $("input[name='email']").val();
    let address = $("input[name='address']").val();
    let phoneNum = $("input[name='phoneNum']").val();
    let orderId = $("input[name='orderId']").val();
    let voucher = "test";
    let totalPrice = $("input[name='totalPrice']").val();
    let paymentMethod = $("input[name='paymentMethod']:checked").val();
    let status = $("input[name='status']").val();

    const emailRegex =
        /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
    const phoneNumberRegex = /((09|03|07|08|05)+([0-9]{8})\b)/g;

    let inp = [fullname, email, address, phoneNum, orderId, voucher, totalPrice];
    let invalid = checkEmpty(inp);

    if (invalid) {
        return true;
    } else if (!emailRegex.test(email)) {
        return true;
    } else if (!phoneNumberRegex.test(phoneNum)) {
        return true;
    } else if (paymentMethod < 1 || status < 1) {
        return true;
    }
    return false;
}

function setErrorLabelDisplay() {
    let fname = $("input[name='fullname']");
    let uEmail = $("input[name='email']");
    let uAddress = $("input[name='address']");
    let uPhone = $("input[name='phoneNum']");

    let fullname = fname.val();
    let email = uEmail.val();
    let address = uAddress.val();
    let phoneNum = uPhone.val();

    const emailRegex =
        /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
    const phoneNumberRegex = /((09|03|07|08|05)+([0-9]{8})\b)/g;

    if (fullname.length < 1) {
        showErrorLabel($("input[name='fullname']"), "Vui lòng nhập thông tin");
    } else {
        hideErrorLabel(fname);
    }

    if (email.length < 1 || !emailRegex.test(email)) {
        showErrorLabel($("input[name='email']"), "Vui lòng nhập email đúng định dạng");
    } else {
        hideErrorLabel(uEmail);
    }

    if (address.length < 1) {
        showErrorLabel($("input[name='address']"), "Vui lòng nhập thông tin")
    } else {
        hideErrorLabel(uAddress);
    }

    if (phoneNum.length < 1 || !phoneNumberRegex.test(phoneNum)) {
        showErrorLabel($("input[name='phoneNum']"), "Vui lòng nhập số điện thoại đúng định dạng")
    } else {
        hideErrorLabel(uPhone);
    }
}

$(() => {
    var invalid = checkValidData();

    $("input[name='fullname']").change(function () {
        invalid = checkValidData();
        setErrorLabelDisplay();
    });
    $("input[name='email']").change(function () {
        invalid = checkValidData();
        setErrorLabelDisplay();
    });
    $("input[name='address']").change(function () {
        invalid = checkValidData();
        setErrorLabelDisplay();
    });
    $("input[name='phoneNum']").change(function () {
        invalid = checkValidData();
        setErrorLabelDisplay();
    });
    $("input[name='paymentMethod']").change(function () {
        invalid = checkValidData();
        setErrorLabelDisplay();
    });

    $(".submit-order").click(() => {
        var fullname = $("input[name='fullname']").val();
        var email = $("input[name='email']").val();
        var address = $("input[name='address']").val();
        var phoneNum = $("input[name='phoneNum']").val();
        var orderId = $("input[name='orderId']").val();
        var voucher = "test";
        var totalPrice = $("input[name='totalPrice']").val();
        var status = $("input[name='status']").val();
        var paymentMethod = $("input[name='pMethod']").val();

        if (invalid) {
            toastr.error('Thông tin đã nhập không chính xác', 'Thất bại');
            setErrorLabelDisplay();
        } else {
            $.ajax({
                url: $("#order-form").attr("action"),
                method: 'POST',
                data: {
                    orderId: orderId,
                    voucher: voucher,
                    totalPrice: totalPrice,
                    fullname: fullname,
                    email: email,
                    address: address,
                    phoneNum: phoneNum,
                    paymentMethod: paymentMethod,
                    status: status,
                },
                success: function (data) {
                    sessionStorage.clear();
                    location.replace("http://localhost:8080/coffee_store_group04_chieut5_war/success.jsp")
                },
                error: function (data) {
                    console.log(data.status);
                }
            })
        }
    })
})