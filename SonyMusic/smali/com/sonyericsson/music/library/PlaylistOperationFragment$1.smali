.class Lcom/sonyericsson/music/library/PlaylistOperationFragment$1;
.super Ljava/lang/Object;
.source "PlaylistOperationFragment.java"

# interfaces
.implements Lcom/sonyericsson/music/playlist/PlaylistAsyncTask$OnPlaylistTaskCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/PlaylistOperationFragment;->savePlaylist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/PlaylistOperationFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/PlaylistOperationFragment;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment$1;->this$0:Lcom/sonyericsson/music/library/PlaylistOperationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCompleted(Ljava/lang/Object;)V
    .locals 2

    .line 303
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    return-void

    .line 304
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment$1;->this$0:Lcom/sonyericsson/music/library/PlaylistOperationFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->access$000(Lcom/sonyericsson/music/library/PlaylistOperationFragment;)I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment$NoEditLocalPlaylist;->removeNoEditLocalPlaylist(J)V

    .line 305
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment$1;->this$0:Lcom/sonyericsson/music/library/PlaylistOperationFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    if-eqz p1, :cond_2

    .line 307
    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment$1;->this$0:Lcom/sonyericsson/music/library/PlaylistOperationFragment;

    .line 308
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 310
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 312
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment$1;->this$0:Lcom/sonyericsson/music/library/PlaylistOperationFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->access$102(Lcom/sonyericsson/music/library/PlaylistOperationFragment;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
