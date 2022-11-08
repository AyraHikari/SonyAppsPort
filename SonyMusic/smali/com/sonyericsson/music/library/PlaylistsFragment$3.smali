.class Lcom/sonyericsson/music/library/PlaylistsFragment$3;
.super Ljava/lang/Object;
.source "PlaylistsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/PlaylistsFragment;->onSortOrderSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/PlaylistsFragment;

.field final synthetic val$newSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/PlaylistsFragment;Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment$3;->this$0:Lcom/sonyericsson/music/library/PlaylistsFragment;

    iput-object p2, p0, Lcom/sonyericsson/music/library/PlaylistsFragment$3;->val$newSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment$3;->this$0:Lcom/sonyericsson/music/library/PlaylistsFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/library/PlaylistsFragment;->access$200(Lcom/sonyericsson/music/library/PlaylistsFragment;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment$3;->this$0:Lcom/sonyericsson/music/library/PlaylistsFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/library/PlaylistsFragment;->access$200(Lcom/sonyericsson/music/library/PlaylistsFragment;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_key_playlist_sort_order"

    iget-object v2, p0, Lcom/sonyericsson/music/library/PlaylistsFragment$3;->val$newSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    .line 525
    invoke-virtual {v2}, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->getIndex()I

    move-result v2

    .line 523
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->set(Landroid/content/Context;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
