.class Lcom/sonyericsson/music/delete/DeleteDialog$2;
.super Ljava/lang/Object;
.source "DeleteDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/delete/DeleteDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/delete/DeleteDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/delete/DeleteDialog;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/sonyericsson/music/delete/DeleteDialog$2;->this$0:Lcom/sonyericsson/music/delete/DeleteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 88
    iget-object p2, p0, Lcom/sonyericsson/music/delete/DeleteDialog$2;->this$0:Lcom/sonyericsson/music/delete/DeleteDialog;

    invoke-static {p2}, Lcom/sonyericsson/music/delete/DeleteDialog;->access$000(Lcom/sonyericsson/music/delete/DeleteDialog;)Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 89
    iget-object p2, p0, Lcom/sonyericsson/music/delete/DeleteDialog$2;->this$0:Lcom/sonyericsson/music/delete/DeleteDialog;

    invoke-static {p2}, Lcom/sonyericsson/music/delete/DeleteDialog;->access$000(Lcom/sonyericsson/music/delete/DeleteDialog;)Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;->onDeletionConfirmed()V

    .line 91
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
