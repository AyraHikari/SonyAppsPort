.class Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader$1;
.super Landroid/database/ContentObserver;
.source "ArtObservingBackgroundLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;Landroid/os/Handler;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader$1;->this$0:Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader$1;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 50
    iget-object p1, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader$1;->this$0:Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->playlistArtChanged(Landroid/net/Uri;)V

    .line 51
    iget-object p1, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader$1;->this$0:Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;

    invoke-virtual {p1}, Landroidx/loader/content/Loader;->forceLoad()V

    :cond_0
    return-void
.end method
