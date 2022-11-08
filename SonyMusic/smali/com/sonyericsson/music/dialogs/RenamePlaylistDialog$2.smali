.class Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$2;
.super Ljava/lang/Object;
.source "RenamePlaylistDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->setPositiveButton(Ljava/lang/String;Lcom/sonyericsson/music/common/InputDialogClickListener;)V
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

    .line 162
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;

    iput-object p2, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$2;->val$listener:Lcom/sonyericsson/music/common/InputDialogClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 166
    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$2;->val$listener:Lcom/sonyericsson/music/common/InputDialogClickListener;

    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;

    invoke-static {v0}, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->access$200(Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/sonyericsson/music/common/InputDialogClickListener;->onOk(Landroid/content/DialogInterface;Ljava/lang/String;)V

    return-void
.end method
