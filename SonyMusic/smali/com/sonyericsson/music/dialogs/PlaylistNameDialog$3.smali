.class Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$3;
.super Ljava/lang/Object;
.source "PlaylistNameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->setPositiveButton(Ljava/lang/String;Lcom/sonyericsson/music/common/InputDialogClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

.field final synthetic val$listener:Lcom/sonyericsson/music/common/InputDialogClickListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;Lcom/sonyericsson/music/common/InputDialogClickListener;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$3;->this$0:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

    iput-object p2, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$3;->val$listener:Lcom/sonyericsson/music/common/InputDialogClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 249
    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$3;->this$0:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

    invoke-static {p2}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->access$500(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 250
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$3;->val$listener:Lcom/sonyericsson/music/common/InputDialogClickListener;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/music/common/InputDialogClickListener;->onOk(Landroid/content/DialogInterface;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
