.class Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;
.super Ljava/lang/Object;
.source "AlbumTracksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/AlbumTracksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexCache"
.end annotation


# instance fields
.field artistNameColIndex:I

.field trackIdColIndex:I

.field trackNameColIndex:I

.field trackNumberColIndex:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/library/AlbumTracksAdapter$1;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;-><init>()V

    return-void
.end method
