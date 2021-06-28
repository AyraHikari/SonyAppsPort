.class public interface abstract Lcom/sonyericsson/music/fullplayer/ArtPagerAdapter;
.super Ljava/lang/Object;
.source "ArtPagerAdapter.java"


# static fields
.field public static final INVALID_POSITION:F = 1.4E-45f


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

.method public abstract getUserPosition()F
.end method

.method public abstract isDefaultBlur(I)Z
.end method

.method public abstract registerObserver(Lcom/sonyericsson/music/fullplayer/ArtPagerObserver;)V
.end method

.method public abstract unregisterObserver(Lcom/sonyericsson/music/fullplayer/ArtPagerObserver;)V
.end method
