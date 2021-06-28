.class interface abstract Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;
.super Ljava/lang/Object;
.source "MyArtPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "InnerAdapter"
.end annotation


# virtual methods
.method public abstract createView(Landroid/content/Context;IILandroid/view/View;)Landroid/view/View;
.end method

.method public abstract destroyView(Landroid/content/Context;ILandroid/view/View;)V
.end method

.method public abstract getAlbumName(I)Ljava/lang/String;
.end method

.method public abstract getArtistName(I)Ljava/lang/String;
.end method

.method public abstract getCount()I
.end method

.method public abstract getId(I)Ljava/lang/String;
.end method

.method public abstract getPosition()I
.end method

.method public abstract getTrackName(I)Ljava/lang/String;
.end method

.method public abstract getUri(I)Landroid/net/Uri;
.end method

.method public abstract isDefaultBlur(I)Z
.end method
