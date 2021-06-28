.class Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$1;
.super Ljava/lang/Object;
.source "RenamePlaylistDialog.java"

# interfaces
.implements Lcom/sonyericsson/music/common/InputDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->onCreateDialog(Landroid/os/Bundle;)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;

.field final synthetic val$args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;Landroid/os/Bundle;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;

    iput-object p2, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$1;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 97
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 98
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->access$100(Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;I)V

    return-void
.end method

.method public onOk(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 87
    new-instance p1, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRenamePlaylist;

    iget-object v1, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$1;->val$args:Landroid/os/Bundle;

    const-string v2, "playlistUri"

    .line 88
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, p2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRenamePlaylist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;

    new-instance v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;-><init>(Landroid/app/Activity;)V

    invoke-static {p2, v1}, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->access$002(Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;)Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    .line 90
    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;

    invoke-static {p2}, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->access$000(Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;)Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->access$100(Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;I)V

    return-void
.end method
