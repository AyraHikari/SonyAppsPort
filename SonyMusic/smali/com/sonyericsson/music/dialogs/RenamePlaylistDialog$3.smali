.class Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$3;
.super Ljava/lang/Object;
.source "RenamePlaylistDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->setNegativeButton(Ljava/lang/String;Lcom/sonyericsson/music/common/InputDialogClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;

.field final synthetic val$listener:Lcom/sonyericsson/music/common/InputDialogClickListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;Lcom/sonyericsson/music/common/InputDialogClickListener;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$3;->this$0:Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;

    iput-object p2, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$3;->val$listener:Lcom/sonyericsson/music/common/InputDialogClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 168
    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$3;->val$listener:Lcom/sonyericsson/music/common/InputDialogClickListener;

    invoke-interface {p2, p1}, Lcom/sonyericsson/music/common/InputDialogClickListener;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method
