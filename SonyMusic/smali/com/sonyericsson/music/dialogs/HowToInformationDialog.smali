.class public abstract Lcom/sonyericsson/music/dialogs/HowToInformationDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "HowToInformationDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getBodyText()Ljava/lang/String;
.end method

.method protected abstract getNegativeButtonText()Ljava/lang/String;
.end method

.method protected abstract getPositiveButtonText()Ljava/lang/String;
.end method

.method protected abstract getTitle()Ljava/lang/String;
.end method

.method protected abstract isDialogCancelable()Z
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 37
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0c00bd

    const/4 v2, 0x0

    .line 40
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    const v1, 0x7f090204

    .line 41
    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 42
    invoke-virtual {p0}, Lcom/sonyericsson/music/dialogs/HowToInformationDialog;->getBodyText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f09015e

    .line 44
    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/music/dialogs/HowToInformationDialog;->showCheckBox()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/music/dialogs/HowToInformationDialog;->isDialogCancelable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/music/dialogs/HowToInformationDialog;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/music/dialogs/HowToInformationDialog;->showPositiveButton()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/music/dialogs/HowToInformationDialog;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/music/dialogs/HowToInformationDialog$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/music/dialogs/HowToInformationDialog$1;-><init>(Lcom/sonyericsson/music/dialogs/HowToInformationDialog;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/dialogs/HowToInformationDialog;->showNegativeButton()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/sonyericsson/music/dialogs/HowToInformationDialog;->getNegativeButtonText()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/music/dialogs/HowToInformationDialog$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/music/dialogs/HowToInformationDialog$2;-><init>(Lcom/sonyericsson/music/dialogs/HowToInformationDialog;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 81
    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    return-object v0
.end method

.method protected abstract onNegativeButtonClick(Z)V
.end method

.method protected abstract onPositiveButtonClick(Z)V
.end method

.method protected abstract showCheckBox()Z
.end method

.method protected abstract showNegativeButton()Z
.end method

.method protected abstract showPositiveButton()Z
.end method
