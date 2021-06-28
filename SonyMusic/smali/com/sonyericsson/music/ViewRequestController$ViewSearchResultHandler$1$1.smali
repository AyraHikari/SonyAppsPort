.class Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler$1$1;
.super Ljava/lang/Object;
.source "ViewRequestController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler$1;

.field final synthetic val$albumArtUri:Landroid/net/Uri;

.field final synthetic val$albumName:Ljava/lang/String;

.field final synthetic val$albumUri:Landroid/net/Uri;

.field final synthetic val$artistName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler$1;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler$1$1;->this$1:Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler$1;

    iput-object p2, p0, Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler$1$1;->val$albumUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler$1$1;->val$albumName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler$1$1;->val$artistName:Ljava/lang/String;

    iput-object p5, p0, Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler$1$1;->val$albumArtUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler$1$1;->this$1:Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler$1;

    iget-object v0, v0, Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler$1;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler;

    iget-object v0, v0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler$1$1;->val$albumUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler$1$1;->val$albumName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler$1$1;->val$artistName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler$1$1;->val$albumArtUri:Landroid/net/Uri;

    new-instance v7, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string v5, "external_search"

    invoke-direct {v7, v5}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 254
    invoke-static/range {v1 .. v7}, Lcom/sonyericsson/music/library/AlbumFragment;->newInstance(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/AlbumFragment;

    move-result-object v1

    const-string v2, "album"

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 253
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    return-void
.end method
