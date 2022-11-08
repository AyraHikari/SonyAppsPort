.class Lcom/sonyericsson/music/search/SearchFragment$8;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/sonyericsson/music/common/MediaAvailabilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/search/SearchFragment;->openAlbum(Lcom/sonyericsson/music/search/SearchItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/search/SearchFragment;

.field final synthetic val$fragment:Lcom/sonyericsson/music/library/AlbumFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/search/SearchFragment;Lcom/sonyericsson/music/library/AlbumFragment;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$8;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    iput-object p2, p0, Lcom/sonyericsson/music/search/SearchFragment$8;->val$fragment:Lcom/sonyericsson/music/library/AlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable()V
    .locals 3

    .line 864
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$8;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment$8;->val$fragment:Lcom/sonyericsson/music/library/AlbumFragment;

    const-string v2, "album"

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/search/SearchFragment;->access$1400(Lcom/sonyericsson/music/search/SearchFragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public onError()V
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$8;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/search/SearchFragment;->access$1300(Lcom/sonyericsson/music/search/SearchFragment;)V

    return-void
.end method
