$(function () {
    rangedWeapon = {
        Id: { type: "number", editable: false },
        Name: { type: "string" },
        Description: { type: "string" },
        Durability: { type: "number" },
        Level: { type: "number" },
        Stars: { type: "number" },
        Damage: { type: "string" },
        DPS: { type: "number" },
        CritChance: { type: "string" },
        CritDamage: { type: "string" },
        FireRate: { type: "string" },
        MagazineSize: { type: "number" },
        Range: { type: "string" },
        DurabilityPerUse: { type: "string" },
        ReloadTime: { type: "string" },
        AmmoCost: { type: "number" },
        Impact: { type: "string" },
        Picture: { type: "string" },
        WeaponEdition: { type: "number" },
        WeaponType: { type: "string" },
        Rarity: { type: "number" }
    };
    window.dsWaterWeapon = new kendo.data.DataSource({
        data: vmWaterWeapons,
        schema: {
            model: {
                fields: rangedWeapon
            }
        },
        requestStart: function (e) { },
        requestEnd: function (e) { },
        change: function (e) { /*console.log("change: ", e);*/ },
        error: function (e) { /*console.log("error: ", e);*/ }
    });
    dsFireWeapon = new kendo.data.DataSource({
        data: vmFireWeapons,
        schema: {
            model: {
                fields: rangedWeapon
            }
        },
        requestStart: function (e) { },
        requestEnd: function (e) { },
        change: function (e) { /*console.log("change: ", e);*/ },
        error: function (e) { /*console.log("error: ", e);*/ }
    });
    dsNatureWeapon = new kendo.data.DataSource({
        data: vmNatureWeapons,
        schema: {
            model: {
                fields: rangedWeapon
            }
        },
        requestStart: function (e) { },
        requestEnd: function (e) { },
        change: function (e) { /*console.log("change: ", e);*/ },
        error: function (e) { /*console.log("error: ", e);*/ }
    });
    $("#pnlWaterDamage").kendoGrid({
        dataSource: dsWaterWeapon,
        columns: [
            { field: "Name", title: "Name", width: 100, encoded: false },
            { field: "DPS", title: "DPS", width: 80, template: fn_TemplDPS },
            { field: "Damage", title: "Damage", width: 80 },
            { field: "CritChance", title: "Crt %", width: 80 },
            { field: "CritDamage", title: "Crt Dmg", width: 80 },
            { field: "Impact", title: "Impact", width: 80 },
            { field: "WeaponType", title: "Type", width: 80 }
        ],
        filterable: false,
        sortable: true
    });
    $("#pnlFireDamage").kendoGrid({
        dataSource: dsFireWeapon,
        columns: [
            { field: "Name", title: "Name", width: 100, encoded: false },
            { field: "DPS", title: "DPS", width: 80, template: fn_TemplDPS },
            { field: "Damage", title: "Damage", width: 80 },
            { field: "CritChance", title: "Crt %", width: 80 },
            { field: "CritDamage", title: "Crt Dmg", width: 80 },
            { field: "Impact", title: "Impact", width: 80 },
            { field: "WeaponType", title: "Type", width: 80 }
    
        ],
        filterable: false,
        sortable: true
    });
    $("#pnlNatureDamage").kendoGrid({
        dataSource: dsNatureWeapon,
        columns: [
            { field: "Name", title: "Name", width: 100, encoded: false },
            { field: "DPS", title: "DPS", width: 80, template: fn_TemplDPS },
            { field: "Damage", title: "Damage", width: 80 },
            { field: "CritChance", title: "Crt %", width: 80 },
            { field: "CritDamage", title: "Crt Dmg", width: 80 },
            { field: "Impact", title: "Impact", width: 80 },
            { field: "WeaponType", title: "Type", width: 80 }
    
        ],
        filterable: false,
        sortable: true
    });

});
function fn_TemplDPS(item) {
    var str = item.DPS.toLocaleString('en');
    return str;
}