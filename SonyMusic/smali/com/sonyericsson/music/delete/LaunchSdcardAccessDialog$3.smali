.class Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$3;
.super Ljava/lang/Object;
.source "LaunchSdcardAccessDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$3;->this$0:Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$3;->this$0:Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;

    invoke-static {p1}, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->access$000(Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;)Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;->onLaunchingSdcardAccessCanceled()V

    .line 95
    iget-object p1, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$3;->this$0:Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
