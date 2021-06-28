.class public Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "PersonalDataCollectionDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "personal_data_collection_dialog"

.field private static final XPERIA_ID_KEY:Ljava/lang/String; = "xperia_id_key;"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog;
    .locals 3

    .line 33
    new-instance v0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog;

    invoke-direct {v0}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog;-><init>()V

    .line 35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "xperia_id_key;"

    .line 36
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setIconToText(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 0

    .line 87
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 88
    invoke-static {p3}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 89
    invoke-static {p1}, Lcom/sonyericsson/music/common/ThemeColor;->icons(Landroid/content/Context;)I

    move-result p1

    invoke-static {p3, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    const/4 p1, 0x0

    .line 91
    invoke-virtual {p2, p3, p1, p1, p1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 46
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0099

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090093

    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "xperia_id_key;"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f100247

    .line 53
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const v3, 0x7f09011f

    .line 55
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0900fb

    .line 56
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090084

    .line 57
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0900ff

    .line 58
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0901c7

    .line 59
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0901c6

    .line 60
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0800d2

    .line 62
    invoke-direct {p0, p1, v2, v9}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog;->setIconToText(Landroid/content/Context;Landroid/widget/TextView;I)V

    const v2, 0x7f0800d5

    .line 63
    invoke-direct {p0, p1, v3, v2}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog;->setIconToText(Landroid/content/Context;Landroid/widget/TextView;I)V

    const v2, 0x7f0800d3

    .line 64
    invoke-direct {p0, p1, v4, v2}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog;->setIconToText(Landroid/content/Context;Landroid/widget/TextView;I)V

    const v2, 0x7f0800d1

    .line 65
    invoke-direct {p0, p1, v5, v2}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog;->setIconToText(Landroid/content/Context;Landroid/widget/TextView;I)V

    const v3, 0x7f0800d4

    .line 66
    invoke-direct {p0, p1, v6, v3}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog;->setIconToText(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 67
    invoke-direct {p0, p1, v7, v9}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog;->setIconToText(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 68
    invoke-direct {p0, p1, v8, v2}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog;->setIconToText(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 70
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    .line 71
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f10024f

    .line 72
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f10024c

    .line 74
    new-instance v1, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog$1;-><init>(Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog;)V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
