.class Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$3;
.super Ljava/lang/Object;
.source "PermissionsHowToEnableDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$3;->this$0:Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 122
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$3;->this$0:Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;

    invoke-static {p1}, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;->access$000(Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$3;->this$0:Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;

    invoke-static {p1}, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;->access$100(Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    const/4 p1, 0x4

    if-ne p2, p1, :cond_2

    .line 124
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 125
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$3;->this$0:Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 126
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_2

    .line 127
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 128
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return v1

    :cond_2
    return v0
.end method
