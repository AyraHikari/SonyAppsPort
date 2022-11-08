.class public Lcom/sonyericsson/music/datacollection/dataplatform/XperiaIdDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "XperiaIdDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "xperia_id_dialog"

.field private static final XPERIA_ID_KEY:Ljava/lang/String; = "xperia_id_key;"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/sonyericsson/music/datacollection/dataplatform/XperiaIdDialog;
    .locals 3

    .line 28
    new-instance v0, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaIdDialog;

    invoke-direct {v0}, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaIdDialog;-><init>()V

    .line 30
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "xperia_id_key;"

    .line 31
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 41
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0c00c1

    const/4 v2, 0x0

    .line 45
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "xperia_id_key;"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09024c

    .line 48
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 49
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    .line 52
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f1002d0

    .line 53
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 55
    new-instance p1, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaIdDialog$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaIdDialog$1;-><init>(Lcom/sonyericsson/music/datacollection/dataplatform/XperiaIdDialog;)V

    const v1, 0x7f1000c2

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 63
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
