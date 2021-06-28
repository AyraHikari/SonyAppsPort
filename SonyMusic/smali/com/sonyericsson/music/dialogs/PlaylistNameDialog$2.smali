.class Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$2;
.super Ljava/lang/Object;
.source "PlaylistNameDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->setTextWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

    invoke-static {p1}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->access$400(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

    invoke-static {p1}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->access$400(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
