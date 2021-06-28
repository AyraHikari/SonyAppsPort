.class Lcom/sonyericsson/music/delete/LaunchDirectoryAccessDialog$1;
.super Ljava/lang/Object;
.source "LaunchDirectoryAccessDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/delete/LaunchDirectoryAccessDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/delete/LaunchDirectoryAccessDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/delete/LaunchDirectoryAccessDialog;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/sonyericsson/music/delete/LaunchDirectoryAccessDialog$1;->this$0:Lcom/sonyericsson/music/delete/LaunchDirectoryAccessDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 51
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
