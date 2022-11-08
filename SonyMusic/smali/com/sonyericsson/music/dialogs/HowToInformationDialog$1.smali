.class Lcom/sonyericsson/music/dialogs/HowToInformationDialog$1;
.super Ljava/lang/Object;
.source "HowToInformationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/dialogs/HowToInformationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/dialogs/HowToInformationDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/dialogs/HowToInformationDialog;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/HowToInformationDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/HowToInformationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 53
    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/HowToInformationDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/HowToInformationDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 58
    :cond_0
    check-cast p1, Landroid/app/Dialog;

    const p2, 0x7f09015e

    .line 59
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 60
    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/HowToInformationDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/HowToInformationDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/dialogs/HowToInformationDialog;->onPositiveButtonClick(Z)V

    return-void
.end method
