.class Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$1;
.super Ljava/lang/Object;
.source "LaunchSdcardAccessDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 84
    iput-object p1, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$1;->this$0:Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 86
    iget-object p2, p0, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$1;->this$0:Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;

    invoke-static {p2}, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->access$000(Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;)Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;->onLaunchingSdcardAccessCanceled()V

    .line 87
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
