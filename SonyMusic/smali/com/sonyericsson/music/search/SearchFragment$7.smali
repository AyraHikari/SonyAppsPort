.class Lcom/sonyericsson/music/search/SearchFragment$7;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/sonyericsson/music/common/MediaAvailabilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/search/SearchFragment;->playTrack(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/search/SearchFragment;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/search/SearchFragment;Landroid/net/Uri;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment$7;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    iput-object p2, p0, Lcom/sonyericsson/music/search/SearchFragment$7;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable()V
    .locals 3

    .line 811
    new-instance v0, Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;-><init>()V

    const/4 v1, 0x0

    .line 812
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setTracksPosition(I)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setShuffle(Z)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object v0

    .line 813
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment$7;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v1, :cond_0

    .line 814
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 815
    iget-object v2, p0, Lcom/sonyericsson/music/search/SearchFragment$7;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/music/MusicActivity;->openAndPlayContent(Landroid/net/Uri;Lcom/sonyericsson/music/common/OpenAndPlayConditions;)Z

    :cond_0
    return-void
.end method

.method public onError()V
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment$7;->this$0:Lcom/sonyericsson/music/search/SearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/search/SearchFragment;->access$1300(Lcom/sonyericsson/music/search/SearchFragment;)V

    return-void
.end method
