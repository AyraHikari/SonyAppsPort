.class Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;
.super Ljava/lang/Object;
.source "AlbumsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/AlbumsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexCache"
.end annotation


# instance fields
.field mAlbumIdColIndex:I

.field mAlbumNameColIndex:I

.field mArtistIdColIndex:I

.field mArtistNameColIndex:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/library/AlbumsAdapter$1;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;-><init>()V

    return-void
.end method
