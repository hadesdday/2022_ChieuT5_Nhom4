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

$(".submit-order").click(() => {
    var fullname = $("input[name='fullname']").val();
    var email = $("input[name='email']").val();
    var address = $("input[name='address']").val();
    var phoneNum = $("input[name='phoneNum']").val();
    var orderId = $("input[name='orderId']").val();
    var voucher = "test";
    var totalPrice = $("input[name='totalPrice']").val();
    var paymentMethod = $("input[name='paymentMethod']").val();
    var status = $("input[name='status']").val();

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
})