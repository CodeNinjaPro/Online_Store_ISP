selectedRowToInput();
function selectedRowToInput() {
    var table = document.getElementById('table'), rIndex;
    for (var i = 1; i < table.rows.length; i++) {
        table.rows[i].onclick = function () {
            rIndex = this.rowIndex;
            document.getElementById("grn_details").value = this.cells[1].textContent;
            document.getElementById("grn_id").value = this.cells[2].textContent;
            document.getElementById("item_registration_id").value = this.cells[3].textContent;
            document.getElementById("qty").value = this.cells[4].textContent;
            document.getElementById("unit_price").value = this.cells[5].textContent;
            document.getElementById("status").value = this.cells[6].textContent;
            document.getElementById("date_time").value = this.cells[7].textContent;
        };
    }
}

function save() {
    var grn_details = $('#grn_details').val();
    var grn_id = $('#grn_id').val();
    var item_registration_id = $('#item_registration_id').val();
    var qty = $('#qty').val();
    var unit_price = $('#unit_price').val();
    var status = $('#status').val();
    var date_time = $('#date_time').val();
    var action = "insert";
    if (grn_details === "" || grn_id === "" || item_registration_id === "" || qty === "" || unit_price === "" || status === "" || date_time === "") {
        alert("Please Enter All Details")
    } else {
        $.ajax({
            url: 'Grn_detailsServlet',
            method: 'POST',
            data: {action: action, grn_details: grn_details, grn_id: grn_id, item_registration_id: item_registration_id, qty: qty, unit_price: unit_price, status: status, date_time: date_time},
            success: function (resultText) {
                alert(resultText);
                $("#table").find("tr:gt(0)").remove();
                load();
            },
            error: function (jqXHR, exception) {
                alert("Fail Ajax");
            }
        });
    }
}

function update() {
    var grn_details = $('#grn_details').val();
    var grn_id = $('#grn_id').val();
    var item_registration_id = $('#item_registration_id').val();
    var qty = $('#qty').val();
    var unit_price = $('#unit_price').val();
    var status = $('#status').val();
    var date_time = $('#date_time').val();
    var action = "update";
    grn_details = parseInt(grn_details);
    if (grn_details === 0) {
        alert("Please Select to Update")
    } else if (grn_details === "" || grn_id === "" || item_registration_id === "" || qty === "" || unit_price === "" || status === "" || date_time === "") {
        alert("Please Enter All Details")
    } else {
        $.ajax({
            url: 'Grn_detailsServlet',
            method: 'POST',
            data: {action: action, grn_details: grn_details, grn_id: grn_id, item_registration_id: item_registration_id, qty: qty, unit_price: unit_price, status: status, date_time: date_time},
            success: function (resultText) {
                alert(resultText);
                $("#table").find("tr:gt(0)").remove();
                load();
            },
            error: function (jqXHR, exception) {
                alert("Fail Ajax");
            }
        });
    }
}

function delet() {
    var grn_details = $('#grn_details').val();
    var action = "delete";
    grn_details = parseInt(grn_details);
    if (grn_details === 0) {
        alert("Please Select to Update")
    } else {
        var r = confirm("Are you Sure?");
        if (r == true) {
            $.ajax({
                url: 'Grn_detailsServlet',
                method: 'POST',
                data: {action: action, grn_details: grn_details},
                success: function (resultText) {
                    $("#table").find("tr:gt(0)").remove();
                    load();
                    alert("Deleted")
                },
                error: function (jqXHR, exception) {
                    alert("Fail Ajax");
                }
            });
        } else {
            alert("Not Deleted")
        }
    }
}

function load() {
    var table = document.getElementById('table');
    var action = "serch";
    $.ajax({
        url: 'Grn_detailsServlet',
        method: 'POST',
        data: {action: action},
        success: function (resultText) {
            resultText = resultText.replace("[", "");
            resultText = resultText.replace("]", "");
            var c = [];
            c = resultText;
            if (c.length > 5) {
                var step1 = [];
                var step2 = [];
                step1 = resultText.split("~");
                for (i = 0; i < step1.length; ++i) {
                    step2 = step1[i].split("_");
                    var newRow = table.insertRow(table.length),
                            cell0 = newRow.insertCell(0),
                            cell1 = newRow.insertCell(1),
                            cell2 = newRow.insertCell(2),
                            cell3 = newRow.insertCell(3),
                            cell4 = newRow.insertCell(4),
                            cell5 = newRow.insertCell(5),
                            cell6 = newRow.insertCell(6),
                            cell7 = newRow.insertCell(7),
                            cell8 = newRow.insertCell(8),
                            k = i + 1;
                    cell0.innerHTML = k;
                    cell1.innerHTML = step2[0];
                    cell2.innerHTML = step2[1];
                    cell3.innerHTML = step2[2];
                    cell4.innerHTML = step2[3];
                    cell5.innerHTML = step2[4];
                    cell6.innerHTML = step2[5];
                    cell7.innerHTML = step2[6];
                    cell8.innerHTML = step2[7];
                }
            }
            selectedRowToInput();
        },
        error: function (jqXHR, exception) {
            alert("Fail Ajax")
        }
    });
    document.getElementById("form").reset();
}
