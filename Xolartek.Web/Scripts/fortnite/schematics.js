var rangedWeapon = {
    id: { type: "number", editable: false },
    name: { type: "string" },
    description: { type: "string" },
    durability: { type: "number" },
    level: { type: "number" },
    stars: { type: "number" },
    damage: { type: "string" },
    dps: { type: "number" },
    critChance: { type: "string" },
    critDamage: { type: "string" },
    fireRate: { type: "string" },
    magazineSize: { type: "number" },
    range: { type: "string" },
    durabilityPerUse: { type: "string" },
    reloadTime: { type: "string" },
    ammoCost: { type: "number" },
    impact: { type: "string" },
    picture: { type: "string" },
    weaponEdition: { type: "number" },
    weaponType: { type: "string" },
    rarity: { type: "number" }
};

$(function () {
    var urlGetRangeWeapons = "/api/range";

    window.dsRangeWeapon = new kendo.data.DataSource({
        transport: {
            read: { dataType: "json", url: urlGetRangeWeapons },
            update: { dataType: "json", url: urlGetRangeWeapons },
            create: { dataType: "json", url: urlGetRangeWeapons },
            parameterMap: function (options, operation) {
                if (operation !== "read" && options.models) {
                    return { models: kendo.stringify(options.models) };
                }
            }
        },
        schema: {
            model: {
                fields: rangedWeapon
            }
        },
        requestStart: function (e) {  },
        requestEnd: function (e) {  },
        change: function (e) { /*console.log("change: ", e);*/ },
        error: function (e) { /*console.log("error: ", e);*/ }
    });

    $("#pnlGridSchematics").kendoGrid({
        dataSource: dsRangeWeapon,
        columns: [
            { field: "id", title: "Id", hidden: true },
            { field: "picture", title: "-", width: 90, template: fn_TemplImg },
            { field: "name", title: "Name", width: 90, encoded: false },
            { field: "level", title: "Level", width: 80 },
            { field: "stars", title: "Stars", width: 80, template: fn_TemplStars },
            { field: "dps", title: "DPS", width: 90, template: fn_TemplDPS },
            { command: ["edit"], title: "&nbsp;", width: 100 }
        ],
        filterable: false,
        sortable: true,
        height: 550,
        editable: "popup",
        toolbar: ["create"],
        detailTemplate: kendo.template($("#tmplDetail").html()),
        detailInit: fn_DetailInit,
        detailExpand: function (e) {
            this.collapseRow(this.tbody.find(' > tr.k-master-row').not(e.masterRow));
        }
    });

    window.dsRangeWeapon.read();

    //kendo.bind($("#FormCreate"), {});
});

function fn_TemplImg(item) {
    var str = "<img class='img-fluid' src ='";
    str += item.picture.split("~")[1];
    str += "' />";
    return str;
}
function fn_TemplStars(item) {
    var str = "";
    if (item.stars != undefined) {
        for (i = 0; i < item.stars; i++) {
            str += "&#9733;";
        }
    }
    return str;
}
function fn_TemplDPS(item) {
    var str = item.dps.toLocaleString('en');
    return str;
}
function fn_DetailInit(element) {
    var detailRow = element.detailRow;
    detailRow.find(".tabstrip").kendoTabStrip({
        animation: {
            open: { effects: "fadeIn" }
        }
    });
    detailRow.find(".pnlTraits").kendoGrid({
        dataSource: element.data.traits,
        columns: [
            { field: "id", title: "Id", hidden: true },
            { field: "impact", title: " ", width: 80 },
            { field: "description", title: "Traits", width: 200 }
        ],
        scrollable: false
    });
    detailRow.find(".pnlMaterials").kendoGrid({
        dataSource: element.data.materials,
        columns: [
            { field: "id", title: "Id", hidden: true },
            { field: "cost", title: " ", width: 80 },
            { field: "description", title: "Materials", width: 200 }
        ],
        scrollable: false
    });
}