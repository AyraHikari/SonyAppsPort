.class public Lcom/sonyericsson/music/artdecoder/FileSizeLruCache;
.super Landroidx/collection/LruCache;
.source "FileSizeLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/artdecoder/FileSizeLruCache$FileSizeLruCacheListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/sonyericsson/music/artdecoder/FileSizeLruCache$FileSizeLruCacheListener;


# direct methods
.method public constructor <init>(ILcom/sonyericsson/music/artdecoder/FileSizeLruCache$FileSizeLruCacheListener;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroidx/collection/LruCache;-><init>(I)V

    .line 20
    iput-object p2, p0, Lcom/sonyericsson/music/artdecoder/FileSizeLruCache;->mListener:Lcom/sonyericsson/music/artdecoder/FileSizeLruCache$FileSizeLruCacheListener;

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/sonyericsson/music/artdecoder/FileSizeLruCache;->mListener:Lcom/sonyericsson/music/artdecoder/FileSizeLruCache$FileSizeLruCacheListener;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sonyericsson/music/artdecoder/FileSizeLruCache$FileSizeLruCacheListener;->onEntryRemoved(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Integer;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonyericsson/music/artdecoder/FileSizeLruCache;->entryRemoved(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method protected sizeOf(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 24
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/artdecoder/FileSizeLruCache;->sizeOf(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
