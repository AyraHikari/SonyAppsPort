.class Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$1;
.super Ljava/lang/Object;
.source "PlaylistNameDialog.java"

# interfaces
.implements Lcom/sonyericsson/music/common/InputDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

.field final synthetic val$args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;Landroid/os/Bundle;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

    iput-object p2, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$1;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 164
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 165
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->access$300(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;I)V

    return-void
.end method

.method public onOk(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 6

    .line 136
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$1;->val$args:Landroid/os/Bundle;

    const-string v0, "itemsToAdd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p1, v3

    .line 141
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$1;->val$args:Landroid/os/Bundle;

    const-string v2, "message"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    iget-object v2, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 146
    iget-object v3, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

    invoke-static {v3}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->access$000(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;)Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    move-result-object v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 147
    iget-object v2, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

    invoke-static {v2}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->access$100(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

    invoke-static {p1, p2}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->access$200(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;Ljava/lang/String;)V

    goto :goto_1

    .line 150
    :cond_1
    new-instance v2, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;

    invoke-direct {v2, p2, v0, p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

    new-instance p2, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;-><init>(Landroid/app/Activity;)V

    invoke-static {p1, p2}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->access$002(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;)Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    .line 153
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

    invoke-static {p1}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->access$000(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;)Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v2, p2, v1

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_2
    const-string p1, "SemcMusicPlayer"

    const-string p2, "Could not create new playlist. Task already running"

    .line 156
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

    invoke-static {p1, v1}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->access$300(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;I)V

    return-void
.end method
