const addMore = () => {
    let count = parseInt($('#dynamic_add li').length) + 1;
    const appendSection = `
        <li class="">
            <div class="form-group">
                <button type="button" title="Remove" style="float: right" name="remove" onclick="removeBlock(this)" class="btn btn-sm btn-danger mb-2">X</button>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3">
                    <label>प्रदेश</label>
                    <select class="form-control" name="province_id[]" onchange="getDistricts(this, 'district${count}', ['district${count}', 'city_state${count}'])" id="province${count}" required>
                        <option disabled value="" selected>रोज्नुहोस्</option>
                        <option value="1">प्रदेश नं. १</option>
                        <option value="2">प्रदेश नं. २</option>
                        <option value="3">बागमती प्रदेश</option>
                        <option value="4">गण्डकी प्रदेश</option>
                        <option value="5">लुम्बिन प्रदेश</option>
                        <option value="6">कर्णाली प्रदेश</option>
                        <option value="7">सुदुरपस्चिम प्रदेश</option>
                    </select>
                </div>
                <div class="form-group col-md-3">
                    <label> जिल्ला</label>
                    <select name="district_id[]" class="form-control" id="district${count}" onchange="getCityStates(this, 'city_state${count}', ['city_state${count}'])" required>
                        <option disabled value="" selected>रोज्नुहोस्</option>
                    </select>
                </div>
                <div class="form-group col-md-3">
                    <label>म.हा./उ.प./न.पा./गा.पा</label>
                    <select name="municipal_id[]" class="form-control" id="city_state${count}" required>
                        <option disabled value="" selected>रोज्नुहोस्</option>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3">
                    <label>वडा नं. </label>
                    <input class="form-control" type="number" placeholder="" name="ward_number[]" required>
                </div>
            </div>
        </li>`;
    $('#dynamic_add').append(appendSection);
}

function reduceGenerator(ids) {
    var joint_id = ids.map(function(data) {
        return '#' + data;
    });
    return joint_id.join(',');
}

const getDistricts = (th, des_id, reset_ids) => {
    let ids = reduceGenerator(reset_ids);
    $(ids).empty();

    let province_id = $(th).find(":selected").val();
    let url = `/fetch/districts/${province_id}`;

    $.get(url, function (data) {
        if(!data){
            $('#'+des_id).append($("<option />").val('').text('रोज्नुहोस्'));
            return;
        }
        //$('#'+des_id).append($("<option selected disabled/>").val('').text('Select an option'));
        $.each(reset_ids, function (k, v) {
            $('#'+v).append($("<option selected disabled/>").val('').text('रोज्नुहोस्'));
        });

        if(Array.isArray(data))
        {
            $.each(data, function (k, v) {
                $('#'+des_id).append($("<option />").val(v.id).text(v.districtname));
            });
        }
    });
}

const getCityStates = (th, des_id, reset_ids) => {
    let ids = reduceGenerator(reset_ids);
    $(ids).empty();

    let district_id = $(th).find(":selected").val();
    let url = `/fetch/city_state/${district_id}`;

    $.get(url, function (data) {
        if(!data){
            $('#'+des_id).append($("<option />").val('').text('रोज्नुहोस्'));
            return;
        }
        //$('#'+des_id).append($("<option selected disabled/>").val('').text('Select an option'));
        $.each(reset_ids, function (k, v) {
            $('#'+v).append($("<option selected disabled/>").val('').text('रोज्नुहोस्'));
        });

        if(Array.isArray(data))
        {
            $.each(data, function (k, v) {
                $('#'+des_id).append($("<option />").val(v.id).text(v.municipalname));
            });
        }
    });
}


const getLocation = (th, url, des_id, reset_ids) => {

}

const removeBlock = (value) => {
    value.closest('li').remove();
    //let count = parseInt($('#dynamic_add li').length);
}

const getProvinces = () => {
    let append = ``;
    setTimeout(()=> {

        $.get('/fetch/provinces', data => {
            append += `<option disabled value="" selected>रोज्नुहोस्</option>`;
            $.each(data, function (key, value) {
                append += `<option value="${value.id}">${value.name}</option>`;
            });
        });
    }, 500);

    return append;
}
