.class Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ProcessUri;
.super Landroid/os/AsyncTask;
.source "LandingPageCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessUri"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/util/Pair<",
        "Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;",
        "Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;",
        ">;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair<",
        "Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;",
        "Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mAdapterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mMusicActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/MusicActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;)V
    .locals 1

    .line 467
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 468
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ProcessUri;->mMusicActivityRef:Ljava/lang/ref/WeakReference;

    .line 469
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ProcessUri;->mAdapterRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/util/Pair;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair<",
            "Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;",
            "Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;",
            ">;)",
            "Landroid/util/Pair<",
            "Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;",
            "Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 476
    aget-object v1, p1, v0

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;

    .line 477
    aget-object p1, p1, v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;

    .line 479
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ProcessUri;->mMusicActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v1, :cond_1

    .line 480
    invoke-virtual {v1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->getUriProcessor()Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$AsyncUriProcessor;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 481
    invoke-virtual {v1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->getUriProcessor()Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$AsyncUriProcessor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 484
    invoke-interface {v2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$AsyncUriProcessor;->getProcessingUri()Landroid/net/Uri;

    move-result-object v3

    .line 485
    invoke-interface {v2, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$AsyncUriProcessor;->getImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    invoke-static {}, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->getInstance()Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->addUriToCache(Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_0

    .line 490
    :cond_0
    invoke-static {}, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->getInstance()Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->addDefaultToCache(Landroid/net/Uri;)V

    .line 493
    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->finalizeArtUri(Landroid/net/Uri;)V

    .line 494
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 460
    check-cast p1, [Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ProcessUri;->doInBackground([Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;",
            "Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ProcessUri;->mMusicActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    .line 504
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ProcessUri;->mAdapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;

    if-eqz v0, :cond_1

    .line 505
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 507
    invoke-virtual {v1, p1, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->setArtAndColor(Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;)V

    goto :goto_0

    .line 509
    :cond_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;

    .line 510
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;

    .line 512
    invoke-virtual {v1, v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->setArtAndColor(Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 460
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ProcessUri;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
